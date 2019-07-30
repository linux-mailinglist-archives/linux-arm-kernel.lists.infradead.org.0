Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0237AD92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 18:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCnzLjMClYYCpUFfh/FKGtx1V6t+CeokMngtTdE3xDE=; b=JpDOQGxkwp8nvL
	y3sqeDxyKb7m9eqbpoaQQurNkYjZLpntOImU9Ew1250tlZRFpPUzVSwpgeB0HnTrwjmyyUi/BtC6c
	1B2HqqzwkLRR4wOj3UFeXSUNmP7TjHrBqQiEljm6PPc4xT2/lhbWDRd2atySXQArHF5G7jtSIHayg
	ITBQ+2HUz+jnNbyGUhCBuliubqQj+0s+cojUx7TpsY3lPDZVUgiaD2fsFAFCF0A/OCNxwjjhQvzTs
	cerMyHdfoFkk8Dus6yWPbpv06sbKzdSxPJjFdYJu9KVOf4t39LNiRcBDk1QwLmsp0UBcW4U4+/+Q8
	6o8954RjLjwmaM79rYrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsV2z-0000ru-Vc; Tue, 30 Jul 2019 16:32:22 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsV2q-0000r5-Hq
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 16:32:13 +0000
Received: by mail-lj1-x241.google.com with SMTP id r9so62695090ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 09:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xx3vIoXX8Mxn7Xfw2L25UDOZ1rfyh83SbXwIfDYTy98=;
 b=Jr/qg1bcxy7MjeWhxfQDSfgI4H19sw3Jz78Pye41vfpqN+qGQyZ5gO32yCnGAwrCwV
 IDJb7U1TOxEAb6pIpWroZIuT7EH8L5n+TenAghKXZ3DFNlsOZ4lD+Vcm71PyTVQcdU8n
 nz9o7mFEcxcOwswCwYoJO2VtzDaYHKf3Z4RAnWrAIp48DYXqZFKMqhiwEj8Hhwr1N8me
 ruOzUTSHHKXkzoToPBzodjKX6V1oOfQetH5lvFZqATFZ8IK321BWFLek4FQyCWqLIG35
 az6aUKKZjPWBpZbPuW9142x9uyef+DFsNPlRQBOkSv+vxQHYAL+YcoELTlO6LXvDWRVC
 /eiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xx3vIoXX8Mxn7Xfw2L25UDOZ1rfyh83SbXwIfDYTy98=;
 b=Aoh642w4e2Ikvt3htUJ7Lr4Ei8ZMXGgu60mBoaYb32+MBGUsQH7Qo9Atsasy+36V24
 8KD7sVdB/nqr3mCtb4POciwgptTOF6aoOscaCKbu6RkVlZUihrjZTeaJZ5BC2c4TlrOE
 ellcdZth3vjm9pjw1+Sqj7WbpgALKV7SLmmrBYnVo94RASIjNIEThP5RefyGCFGIlAID
 yeUFFJJp91ETdJqLHjUmfVWfo14Vm8DWtJag5tPG2IjLZtU3iv0zSOEq0fESqDwvqxSc
 Hn+v18iCzqxjQ8XrWApWbMc7igK2pTxy+IfN8Q0QQ2YA2XIC6/rsNtTkwcdF7iNP2/CU
 YI0Q==
X-Gm-Message-State: APjAAAWBmSxWTICpxSqZ86v91lJR9ewjQpYAiEV5HXFKg4BmOiW2uOWO
 7zVYslAuTOpZ5/nB+upw+QpPlLkwWWfETwA216E=
X-Google-Smtp-Source: APXvYqycFcTFoT9V2kVAqMs+UnnH6bzjYSJTSertHTYTAJI+RtGajdJMivgIKh9SwCSMNIC3PdQzfGaeyRqcszz+JWM=
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr24607447ljs.44.1564504329883; 
 Tue, 30 Jul 2019 09:32:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190729172007.3275-1-krzk@kernel.org>
 <20190729172007.3275-2-krzk@kernel.org>
In-Reply-To: <20190729172007.3275-2-krzk@kernel.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 30 Jul 2019 13:33:30 -0300
Message-ID: <CAOMZO5BzA7JfNhJtZjUCewGicWFy1Qemx3jV1=+27MjUnsq4kQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] ARM: dts: imx6ul-kontron-n6310: Add Kontron
 i.MX6UL N6310 SoM and boards
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_093212_618203_5CE02FD0 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Mon, Jul 29, 2019 at 2:20 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> --- a/Documentation/devicetree/bindings/eeprom/at25.txt
> +++ b/Documentation/devicetree/bindings/eeprom/at25.txt
> @@ -3,6 +3,7 @@ EEPROMs (SPI) compatible with Atmel at25.
>  Required properties:
>  - compatible : Should be "<vendor>,<type>", and generic value "atmel,at25".
>    Example "<vendor>,<type>" values:
> +    "anvo,anv32e61w"

This usually comes as a separate patch, but anyway:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
