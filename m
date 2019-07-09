Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616D462D82
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 03:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uab675XJeGFIVDHgnOW8mxe7Y0tgLDpmM6f2/5C5KiE=; b=niYDmWcExFAqvS
	NZ3I8UEfRA2sWYv+dbLDO+ss+mPyOhwody2TxN6sAb33HwckLAHMtOSXfQayUkw+be4wrT2oetWpH
	iyoo6VXv88ye7R/3ncrfDrMzFpeFFaAPbQMzBjvVn7jRICRpmUyuM4QwFyqytNHTHL+ltdz+H9USi
	Xt4H1Voh7moIeXrGqwObKVmbSQ4THUVMBmuhCREgYvuwfyu1vej2XuEXmYtX7SYsJLiFJp4Hz+vEu
	DbZE4QgDoZF4Hhj57Gxkl8kcpZ6iUvG4CujSZ3PKAVD1ViHa6bWHnvG6VpDqarlrk0tHVPWVSLYuY
	3Ht4yIU8QDNsqYNX1j7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkf4z-0005Ii-0V; Tue, 09 Jul 2019 01:38:01 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkf4h-0005Gl-0h; Tue, 09 Jul 2019 01:37:44 +0000
Received: by mail-io1-f67.google.com with SMTP id o9so24082696iom.3;
 Mon, 08 Jul 2019 18:37:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rt46CmBrJxWpxaSmwKwGFBfR/eZrxQhs6asslQRNZ5w=;
 b=f9I/+BAkU4LUOIVVCSkJwNST4sipxaN/wOYnDS5iZA+M4TGvn4ZBJHqJ237IfV20Mr
 iNTa/VMLc7Rnwa3DuzpuMA3DJWPqzeF6hdQ6CRlQR64/a7SklYrDVFvVNOBfzstDc7zV
 WpE2+3i6gCbL6BxbaFkRWNpFSBAai9Ux8AgSiQxMC+4FqLLJZUutc7WVJu9i/QY+VnLH
 4H1b42135rktO119fH+yGRov+X2OrnAqXafkt0PK2EnUZkkGfnOJUGkdlfamAVk0kpzf
 Y8ZK5UmmUKn63CWET8LM8N3RwMyg//+RJisi0nydaA506W36l9AfTWJz9fFeou8J7neQ
 jMIQ==
X-Gm-Message-State: APjAAAXZ6hFb6b/ve0bYAQqy0uurrUbo7UPXxH/4VVjlSHsJdQfyRhX9
 6qULUD+bfMmDSklLKqnGfQ==
X-Google-Smtp-Source: APXvYqzPY/xWzmhADFj1fMhI/5R2iKDWY+q2CZ9P/YspzMA+qJZakBS+tSlpy3FD1YaXxAK/9OjWUQ==
X-Received: by 2002:a05:6638:627:: with SMTP id
 h7mr25308804jar.33.1562636262340; 
 Mon, 08 Jul 2019 18:37:42 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id i4sm25223321iog.31.2019.07.08.18.37.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 18:37:41 -0700 (PDT)
Date: Mon, 8 Jul 2019 19:37:41 -0600
From: Rob Herring <robh@kernel.org>
To: yongqiang.niu@mediatek.com
Subject: Re: [PATCH v3, 03/27] dt-bindings: mediatek: add ccorr description
 for mt8183 display
Message-ID: <20190709013741.GA29622@bogus>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
 <1559734986-7379-4-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559734986-7379-4-git-send-email-yongqiang.niu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_183743_112925_504A31C5 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

On Wed, 5 Jun 2019 19:42:42 +0800, <yongqiang.niu@mediatek.com> wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> Update device tree binding documention for the display subsystem for
> Mediatek MT8183 SOCs
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
