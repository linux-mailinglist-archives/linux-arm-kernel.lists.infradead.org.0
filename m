Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C4A73D38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0DoCFkozH10q8tkMnz3ylyw9tKUhWAb4KYOpUVKm6c=; b=eQ5nCXujvZmeg8
	HomFB7AO5Fc2/7tyfOSGuFgWERUanAMgURUTWIQNVVmzcplvkSoPeTMLufAO5Qij8VrM8dtrMxI4X
	FiCdmHwGsKYCJdGMPXkYukWW+Owrv8+AocyeP5y5gviyGl5QNitFCS9ZXxmV1fkXe5BvFcgDlyT1m
	ZO5vx8t845wabp5EHqDayEnjuOgkts0XcgwvPP9wIAS/Qr9wOuN1HymJH/9MiEob9ZOoYQ8L/EVIp
	RduuxJeXnAL+TfFzMI9yMWELh/dw95BBtvDwfo9Voj5mkGLAQIoVFDbUnzNErwDZtuMllA2Ocn6ip
	V0QDbTVYkC2MtbELqKMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNfj-0000bp-2Y; Wed, 24 Jul 2019 20:15:35 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNfW-0000bH-2m; Wed, 24 Jul 2019 20:15:23 +0000
Received: by mail-io1-f66.google.com with SMTP id k20so92285001ios.10;
 Wed, 24 Jul 2019 13:15:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I8CjyViUUMDogLJ5VWVPS6e/PwcUeKuF+6IP3/vGsBs=;
 b=XOyPeU+Utpy9GgH4uRW40pFdM8xBuNUs9l0MudNepn0eLxNlBV4DM10yDq2xiKfbhf
 Yw9CDClCCzxEwvk/Dry6GHLoY35+xT5RbbxWRJnDGhgsmwErIqcm1hI7C1b/HgoXo/BS
 7naJZHpx4K4sKgcq94w076JArU6h63KHnPOq86m9mMjR4GsegyEKqcbEvQx4GdmTZOQL
 ZPfq473NMqhG/AJLUfssIJHd1HHtJty6R6RuX5ptYH2OvpU5AikXBcYe97J9LDiUZDgW
 z5LrXtNyvDC64wER+4GP8l/7hXazloVhRNilGksmDKEHw8U4Mf3Q1cpLjaVA+uSn6JFo
 O43g==
X-Gm-Message-State: APjAAAVq7PROfcT4XNZz2Si1EYIIo1ix4hhoI0JAKJ2/5Ri80jqMlp7P
 pblAJx1pKXocjGvqAsuYOw==
X-Google-Smtp-Source: APXvYqybRcRkXoHjkdesxQbBTM2QuHB/KR5mvS2bWaUpVJ+8PZzHrz+31LV30zjboYU8LvifX/teOw==
X-Received: by 2002:a6b:8e82:: with SMTP id q124mr68424936iod.68.1563999320721; 
 Wed, 24 Jul 2019 13:15:20 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id v10sm41420293iob.43.2019.07.24.13.15.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:15:20 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:15:19 -0600
From: Rob Herring <robh@kernel.org>
To: yongqiang.niu@mediatek.com
Subject: Re: [PATCH v4, 02/33] dt-bindings: mediatek: add ovl_2l description
 for mt8183 display
Message-ID: <20190724201519.GA18133@bogus>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-3-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562625253-29254-3-git-send-email-yongqiang.niu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_131522_126555_ED587C5F 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 CK Hu <ck.hu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 9 Jul 2019 06:33:42 +0800, <yongqiang.niu@mediatek.com> wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> Update device tree binding documention for the display subsystem for
> Mediatek MT8183 SOCs
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,disp.txt    | 27 +++++++++++-----------
>  1 file changed, 14 insertions(+), 13 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
