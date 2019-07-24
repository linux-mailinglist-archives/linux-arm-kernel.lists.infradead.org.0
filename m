Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9036873435
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJQTWoWN5kjt9GxaADoK0LKiHl7IathYFbfseHKEgV8=; b=W1/2a7zmhy9ZT9
	juC0HdjmTKmVsbxlyhzt4v+ObxBJ1QvEDxqlN29D5rMNkwTO5sjTJnvBsaFWUtu5p60APO3WQ+Y9X
	0LkKZVxNV2G60bCCopLTfVJbspBNq6GvPAJvKBW2M8PGj3xX1thYjOW79YFAsyscnQMPaYj8u23Hw
	vh1nSimrIB4fSF7n9IpGjF4/ZAvD4Fo4KG1qfaINTU9FSn5feJgkAIio5MdMFX1n1ce4dQhQe6Efg
	E4pSpONrdlyU2K4i2bSfs5zfYeQdlQxCifMIhmA2/0ULjGTNIWDa5we7qMvSSs7CzfDE1l8Wi1bYz
	Lv/wGQVppQVg318ng9rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKSf-00046G-Gg; Wed, 24 Jul 2019 16:49:53 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKSS-00044v-KG; Wed, 24 Jul 2019 16:49:42 +0000
Received: by mail-io1-f65.google.com with SMTP id j5so86864028ioj.8;
 Wed, 24 Jul 2019 09:49:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lzLxr/ZHFALs7HXjKuWkfuLA5VhCZtI1OXBLZOHTWp8=;
 b=rjABduqSIw1wv1zNtJvjLe4VE0pRe4TZl4pmim/hgxM5N68DsU+hhXAjzHlDkdQ7Am
 nlac+OpvPRnqldw27gMwX/lgbI0hD979ueJP8cRxi2fWZ9BON2kExevld4/QmouXDy61
 5hN1qj3wZ3s4ggwtkUkyqGyHuZ4nWho5E0oNumsI3BCEj59Q52syqYTjYbM6d5+cBX5D
 e8eimCVruEgPULkFy8uqX6R6h4OVPk3n1ObZxF0VzUIZ5+r2oVkEe8sEZbW8XS2EFa8q
 XSBlRU4Xia9Ny8b7WnDo1lZh/7mSfM3n4/xTsWQ0NTGSm/BJEN6ITRIuNLX/VqzcdPmF
 6nlA==
X-Gm-Message-State: APjAAAWGf8eS01P+vmMBFsG/8mM/QZySj3Oant8peHLfntBxkQYkptCp
 aZ+kLdco+sh5NC/+MadeWw==
X-Google-Smtp-Source: APXvYqycVXE/3Diq36JRVdilGAeFPoocp/x5uykh8vdo3CPw1BlwOUJzQuvKMNLrDaaaN0Mc+FiZ+Q==
X-Received: by 2002:a5e:c70c:: with SMTP id f12mr1401889iop.293.1563986979919; 
 Wed, 24 Jul 2019 09:49:39 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id j23sm37899229ioo.6.2019.07.24.09.49.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 09:49:39 -0700 (PDT)
Date: Wed, 24 Jul 2019 10:49:38 -0600
From: Rob Herring <robh@kernel.org>
To: frederic.chen@mediatek.com
Subject: Re: [RFC PATCH V2 1/6] dt-bindings: mt8183: Added DIP dt-bindings
Message-ID: <20190724164938.GA25542@bogus>
References: <20190708110500.7242-1-frederic.chen@mediatek.com>
 <20190708110500.7242-2-frederic.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708110500.7242-2-frederic.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_094940_661075_824C7A90 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
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
Cc: laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 Allan.Yang@mediatek.com, suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 jungo.lin@mediatek.com, hans.verkuil@cisco.com, frederic.chen@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 holmes.chiou@mediatek.com, shik@chromium.org, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 christie.yu@mediatek.com, zwisler@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jul 2019 19:04:55 +0800, <frederic.chen@mediatek.com> wrote:
> From: Frederic Chen <frederic.chen@mediatek.com>
> 
> This patch adds DT binding documentation for the Digital Image
> Processing (DIP) unit of camera ISP system on Mediatek's SoCs.
> 
> It depends on the SCP and MDP 3 patch as following:
> 
> 1. dt-bindings: Add a binding for Mediatek SCP
>    https://patchwork.kernel.org/patch/11027247/
> 2. dt-binding: mt8183: Add Mediatek MDP3 dt-bindings
>    https://patchwork.kernel.org/patch/10945603/
> 
> Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
> ---
>  .../bindings/media/mediatek,mt8183-dip.txt    | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-dip.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
