Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A5A124EA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 18:02:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYca3zMwEIBlfqmBKOCC3ro+i8cjke0PSTpUrbFpFxA=; b=LV2jpf9a1KQa8+
	Dod3avv8PV1HsEf0gbig+7JY5QHZuNySvPqNc3cDg3pdzD4qE5L4ywlnecwkmzHYzOANooPcco36f
	UgQyI2Ig8uteOXCnAHoX4jxh+pC2MK3MKZwxE8VWARKnslpu2jqd/jCgDlUNGLsKh93uV9tbB3+0h
	kYSRaa4AWoOzIsQJmnNkinjZnjntGtkbkIJTf5H/Fb5/YZsit90RRRUgtE3rMfR+4rb42lofYDkSs
	VZ0gvf37Eb77NZpckNTudSWsSKlsojCpW9NcKRGt/VAxPS8B+Jizj0IpzMlVrMmZ6nN5BgoC4EBb3
	dyrwGeLdYcUGvML6x7MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihciR-00072e-LW; Wed, 18 Dec 2019 17:02:27 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihciI-00071S-Mg; Wed, 18 Dec 2019 17:02:19 +0000
Received: by mail-ot1-f68.google.com with SMTP id 59so3262082otp.12;
 Wed, 18 Dec 2019 09:02:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JaI7AY/5dEsE+PzKKfws1NegVl++uA5oApSBgLNQCls=;
 b=N6jmJZ4GEqHNmTydBwy+jJG6rGPa+ZV4UY44ajoTzAa2Gq6I8kAqRNzp18MqG8G6xj
 Nm5qChA/hhKJTbfvhzBx1kvyAtW9HZRGsQF3WzZsYOL4mFz+tx+JoI2x2KL+h8Pzy7p3
 nIUwxq7eNNSOaJVDTmZ68iUc1xSPe4z2XYYlowR3zOA9O2zuNM6vsHsj1526QXRs9uRg
 xAovLevV19sNag9hLRZ0sV7Mt3XZ6fgku5Qjulf8DlnchCCvoGufrcFhrLGaSKe906oC
 nJRxx4fIILqnwTKAEtTzMYDJQZDpSfKj7YXOP0ktqq1L8vja+VAFPKs0w0+u0PmPJN8K
 ot2w==
X-Gm-Message-State: APjAAAVmTkMnMNYrDPgBaeRwGvNkKtrWhWUWA4chpWJbxj4Lg9GWVRW/
 K14k9Acea1NbT39KxWv7bA==
X-Google-Smtp-Source: APXvYqzOiFGi11lFLhBbyJQ2UV01N4xUjbtoI1m67WTwLSZq6goK5Ks+0SR2sX/w079C4Hu9mqDTmw==
X-Received: by 2002:a9d:7c8f:: with SMTP id q15mr3730626otn.341.1576688537723; 
 Wed, 18 Dec 2019 09:02:17 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r13sm963542oic.52.2019.12.18.09.02.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 09:02:17 -0800 (PST)
Date: Wed, 18 Dec 2019 11:02:16 -0600
From: Rob Herring <robh@kernel.org>
To: matthias.bgg@kernel.org
Subject: Re: [resend PATCH v6 02/12] dt-bindings: mediatek: Add compatible
 for mt7623
Message-ID: <20191218170216.GA18152@bogus>
References: <20191207224740.24536-1-matthias.bgg@kernel.org>
 <20191207224740.24536-3-matthias.bgg@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191207224740.24536-3-matthias.bgg@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_090218_741110_E97C5383 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, rdunlap@infradead.org, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 laurent.pinchart@ideasonboard.com, ulrich.hecht+renesas@gmail.com,
 linux-clk@vger.kernel.org, drinkcat@chromium.org, wens@csie.org,
 ck.hu@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, sean.wang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 linux-arm-kernel@lists.infradead.org, mbrugger@suse.com, sboyd@kernel.org,
 sean.wang@kernel.org, linux-kernel@vger.kernel.org, p.zabel@pengutronix.de,
 matthias.bgg@kernel.org, enric.balletbo@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  7 Dec 2019 23:47:30 +0100, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> MediaTek mt7623 uses the mt2701 binings as fallback.
> Document this in the binding description.
> 
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,disp.txt      | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
