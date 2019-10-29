Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DB3E8FF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 20:28:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/VfJ7Y5nNeGnTrjGv4Z+iXL95SDaIEorDaZtsLMjqg=; b=atq/5kakJQTuoy
	PEr+UC3ckFFXDIffyIPncua11jzreTuLDMknC1uO9RnV6j5dXLlDHHTVCu7aer+tKEwt46jx9SH7J
	8VJL9pf1zD2FH0uFbWYTUzk6h+iPcJ5UYX4Jw2PebhRYwaWNtctutQOQ23W16WcBZOfK0aG62LGEI
	AdZwFna68SEy+oF5bcHNOggfHo9aB24ILcxV22g5I8a3GUeN4+PpA7vX5a0krO3A2Sae19EXWGpRf
	ABis/VoKHmS9eCMR8Q2AFF/GhOy9WK5SAf0NCYrrRHkCPW1I9Xofsy8WJSD2KYqTg/qUDUoBABq+R
	oLN3qQdpQvU3q4ZAsM6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPXAC-0006md-4a; Tue, 29 Oct 2019 19:28:20 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPX9w-0006lu-SG
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 19:28:06 +0000
Received: by mail-ot1-f66.google.com with SMTP id b16so10780504otk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 12:28:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0zdnZwmokAR/GsYiaZ2pYAzVNUBZHxjHTMKuDhMdpYM=;
 b=gvyH/TF1Yn7G8vfFSvo6PYmqCmi7eYbfr6ijjDzu56RUznGc6DnmiUzYwT3AMjW/Bf
 D8YqwzOMtfJnbCuRVJyHgpr3anRiJkhmqtEZ/FAhxBPzHTMwPeHqcbar5P+KmMKomgC7
 qyzO0GvIURZ0Xtz+/LSB552wLYVQOnE4Bt3aBcBgrZrQMciHXJnG5m8toFyXT61SVx39
 uum1BWGKDs6cUgWumba6l6woEbptzy+tBcQHVYLXWYwGuop0hVJkao3w231zRA6P3HDh
 h8MFLGN8rS8o6weXcli0MYT1LU9n4q+P7d+QVi4nu2Y1+ho00q6xou174fOw6v4qRWwa
 imnA==
X-Gm-Message-State: APjAAAXt/hMcngkKR3Fcg3gOuUcuiI9U7zbcCgSnwA2blrzEl5QdVtq3
 CmYqUoEeP8rSR00hfVKAiA==
X-Google-Smtp-Source: APXvYqzJ2OGkDg7Vi9JH4GFnkn6p59w8xzjoTajxVuI3H1NYV9vMfSDmHlkyOxYkTrLcJ9f/qmqtXw==
X-Received: by 2002:a05:6830:22ef:: with SMTP id
 t15mr8798502otc.256.1572377283925; 
 Tue, 29 Oct 2019 12:28:03 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 88sm5104885otb.63.2019.10.29.12.28.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 12:28:03 -0700 (PDT)
Date: Tue, 29 Oct 2019 14:28:02 -0500
From: Rob Herring <robh@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: Add bindings for USB3 phy on
 Allwinner H6
Message-ID: <20191029192802.GA1282@bogus>
References: <20191024105500.2252707-1-megous@megous.com>
 <20191024105500.2252707-2-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024105500.2252707-2-megous@megous.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_122804_915660_75CFBE86 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chen-Yu Tsai <wens@csie.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-sunxi@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 24 Oct 2019 12:54:57 +0200, Ondrej Jirman wrote:
> The new Allwinner H6 SoC contains a USB3 PHY that is wired to the
> external USB3 pins of the SoC.
> 
> Add a device tree binding for the PHY.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Acked-by: Maxime Ripard <mripard@kernel.org>
> ---
>  .../phy/allwinner,sun50i-h6-usb3-phy.yaml     | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb3-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
