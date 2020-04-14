Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203B21A8DE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 23:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OA8TukpiB2rFLZ6N08PPmWXDlCnpP8p8ao4yDKwh4dg=; b=QWaNweolLlhtuq
	AWcQH489eTxDuEhg4xHiu0DZj1QBYYlNVDJwusy5RnQseRzYhbDLoGjV+mfolISPo/G5KOUBS6ndk
	sRnDwflF2A3tRpfESq4/uEpCQ59dWHvn9WsiBtPEBo/g7vt9I/NGxj0C8TxoacQGWO7Z10Hcp/JW9
	GworiFzKYC+sXEkzAaQ2NoQCE29p/wsi/qQDJzySQGuRoj8AZbfw+UAa++frtqz0+Ai6uT5eOhU01
	ycy6ZKJtODGHX/Fg3IFqZVWkOv5uaZ96VADAsHTdp4Jg+5BpqxtUnGUMiX2ekrxppesQ1Xeo/n4TR
	2tZwBpsgdZzIcCw1gDhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOTLL-0002Hl-1C; Tue, 14 Apr 2020 21:43:43 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOTLD-0002HL-LL
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 21:43:37 +0000
Received: by mail-ot1-f67.google.com with SMTP id x11so1312516otp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 14:43:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uvozqtfEr9bESGHX3UpchnJ8A2PhYWDydvpfuPdbYhc=;
 b=DysLEUS7JKlxSEdtDF4ciwJJMp9Vg7t/nIJJS6uzXx0SJLITceV6qd4qjtprtIgQ0z
 wtcNRVf1kZv7cATRLdP/Q07zsfy/3VWiPyZP4PUtuDhWy67da4KHLSNWWa39IX4ZZQxS
 iOWPVyyzA6yzpKzH/9626t55CSAE3NjFsV/PeFwlrypgwJYY0w7bffAPrJCtfmRH8Urd
 h7XFptcWZPaSQgMO1HLbaB9RUxvf3SLcAiSjTuWslsGWUQD65g7RftLQ6LBcwb/ncPIx
 RplQc4FnAcRyNmU7S8g101kOT4eHLAxLzZscLdWoa45LHq1k11L/9A+2bN/0h13k5hzt
 INwA==
X-Gm-Message-State: AGi0PuafWUm2zQ6+eATDf+9ReDRVWMQrr9jNska/mzFNK9BpiT/oE95G
 RpM4rcbLQX7VpKOhWCCeIg==
X-Google-Smtp-Source: APiQypKkc3mkxopBmD8q3Q9BAh/YpU4AikDfqfbekmDrulLTaWnF6YhmPFGgCuE0Wn2xDDc3dm4eEw==
X-Received: by 2002:a9d:24a4:: with SMTP id z33mr20460527ota.105.1586900614278; 
 Tue, 14 Apr 2020 14:43:34 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e3sm4970371oii.6.2020.04.14.14.43.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 14:43:33 -0700 (PDT)
Received: (nullmailer pid 9000 invoked by uid 1000);
 Tue, 14 Apr 2020 21:43:32 -0000
Date: Tue, 14 Apr 2020 16:43:32 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 2/2] dt-bindings: watchdog: Convert i.MX7ULP to json-schema
Message-ID: <20200414214332.GA8620@bogus>
References: <1586831568-24635-1-git-send-email-Anson.Huang@nxp.com>
 <1586831568-24635-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586831568-24635-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_144335_699356_13C26166 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, wim@linux-watchdog.org, shawnguo@kernel.org,
 linux@roeck-us.net, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 10:32:48 +0800, Anson Huang wrote:
> Convert the i.MX7ULP watchdog binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../bindings/watchdog/fsl-imx7ulp-wdt.txt          | 22 --------
>  .../bindings/watchdog/fsl-imx7ulp-wdt.yaml         | 60 ++++++++++++++++++++++
>  2 files changed, 60 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.example.dt.yaml: watchdog@403d0000: 'timeout-sec' does not match any of the regexes: 'pinctrl-[0-9]+'

See https://patchwork.ozlabs.org/patch/1270024

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
