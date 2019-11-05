Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB8AF0542
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 19:42:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIAMvfVJbCjRxiyd5d+X2QDI/8MprEGQvd+M5eV0Piw=; b=o4HvDl56KCY8hN
	8zVLaSrzy6oN4qUT3DjnWUMt7lrC0492WczK8qxp3e3cfqxL2d0ra24EPbubG2KzJ3nNAidhDyCJa
	DXiRzKmkIWCfturKbc2VcXlgs05VK5EFhGzn6WJjktJpxJYeM7rflhNFtN+n6d4sSmQov1MH9BKwx
	wo3dVmr7UBNIEIQ6uEx9VkTRZxp5jYUAEqnZiJEyguVdDyUbKxjsNWIwvqjRJ+pBMPKtryw7aGG77
	EeYTOMNUR+HUWLoPHdGBGubqbSsp/Mwr42pHUSC4HAuBG7g5QSF+c7ufxpxDhRZKLTNJmkfCOndbL
	5Pjgob9H2RMUaUuZq+rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS3mA-000155-1l; Tue, 05 Nov 2019 18:41:58 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS3lz-00010P-4B
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 18:41:48 +0000
Received: by mail-ot1-f68.google.com with SMTP id e17so10002916otk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 10:41:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZcTS25xDAMIirazFonzLL/ydaCeZnXdtGHuL+mEiDCE=;
 b=enFAqvee2fZOvS5dWr/Q4Q1CRCVtkZevIR8bjDvqXY3SBge48r1YvbtJQjOlb/Wt3p
 2aQ/cLLvH6FsWA85DWskLqhqbROcCQ80/J7P58EBEZxiTAbL+G3ekoUce+qEev6S7MLD
 SWTQWkklfbPfL4xDarxcloAA3SBHxErBZ64huscCA/tCgccSzsK9KvjAUa2HFscJyqee
 5lVcVs0mRXXJ8B/nesTLCJs0zYLiokIBur8rLX89tM6cWzfgzCN3whTFHDcU5KBU+if+
 ZWG51u556g7lQIRshclvTF/Inu1k25fdlq8/MxdjngVDXjybdaKdbFIAnPD7j7gY2uIo
 riKQ==
X-Gm-Message-State: APjAAAWHPCl8g5ItnWFDYfn3SsV1s05mq3xm0ZrsPQqVo2m7WFVLJuk+
 L5fJKK1CMRAaTDuuo7kb6w==
X-Google-Smtp-Source: APXvYqwa/eDD8mpnX7OYEJYfOGvN4ZSwKb0NYl0obJNUJgwpRsdPswN/MTugiyfx57WysSknfSo7fw==
X-Received: by 2002:a9d:5605:: with SMTP id e5mr869941oti.150.1572979306019;
 Tue, 05 Nov 2019 10:41:46 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c20sm1474934otm.80.2019.11.05.10.41.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 10:41:45 -0800 (PST)
Date: Tue, 5 Nov 2019 12:41:44 -0600
From: Rob Herring <robh@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: atmel: add bindings for PIT64B
Message-ID: <20191105184144.GA29029@bogus>
References: <1572880204-4514-1-git-send-email-claudiu.beznea@microchip.com>
 <1572880204-4514-2-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572880204-4514-2-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_104147_182386_584F3BD0 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 05:10:03PM +0200, Claudiu Beznea wrote:
> Add device tree bindings for PIT64B timer.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
> 
> Hi Rob, Nicolas,
> 
> You Reviewed-by/Acked-by v1 [1] of this patch but I didn't collect it in this
> version since I removed the clock-frequency binding in this version. 
> 
> Thank you!
> 
> Change in v2:
> - removed clock-frequency binding
> 
> [1] https://lore.kernel.org/lkml/1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com/
> 
>  Documentation/devicetree/bindings/arm/atmel-sysregs.txt | 6 ++++++
>  1 file changed, 6 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
