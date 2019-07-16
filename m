Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D6B6AFD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 21:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o48Af750ZanzsvMIMcMRITttnXmlk7t/0yfrbKQIHsM=; b=dDnl9CELBT6Ch0
	Uf8VPD6JdmvFQSn93PJMv/tf873mQiEugrcnIfSsde+NvcijJxZGZmRAPZw6/PwiYPW+f9IQu5dGx
	B4Nds1mfJNAMAGIb9CmAVos1pEVgffvq/wFutyhhaQXj7XKt3ukuu8RlNRC0hryzuUYKjEWnA0zon
	0adzhyrtfnFbBs6G7t2LqfE25cz6SX+2x/3edrJ8ZgXWSnH9twwEhSK8YkjjMHk0yFRsLM1BvnCEe
	ycKU3pWN4HaIxqp+hs+cQiqJCeNv1wfy2vU6odxQAkh3kcJjxpsH6+LDBH5JuWQe0lgySd0etVI+s
	Y4yyU7RrPyZxrJyYk8PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnT7y-0000GU-BE; Tue, 16 Jul 2019 19:28:42 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnT7j-0000FF-9L
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 19:28:28 +0000
Received: by mail-lj1-x242.google.com with SMTP id v18so21104249ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 12:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YusULDKtvbaFl4EVjjwq8xCVpUXm7QI7zzqzoLVeBuI=;
 b=mhTDz/D0OskKZMo3HE8550xVnGiC9jLh8q+9T61FpCJQf+l5OKx0RXL1gKiRgdWQYw
 AbIKrOmSECVoQscbUZqufL7SFkovNrMppMuR+mpoRgNhnZRqVb0MMABOUip82pFfE3pA
 R0KqE9borwHUpSlN2j5Jug1Q77+/0D7dFcXv0tHNhVcGUGDyJItOQpMUeNMC8Bk9Her6
 zIWo7OBatil6hgBApRzsLm11OIFpKRVa2sYctDblab4ehBO4k+BJh+LsZV+KY3LPuHtz
 /ajAmjy9bSC+5UQIaI3kjqXD0USAm2o2TRauds2Ep6TjoxwZzqMBRU8hcXqodi5P23Ry
 /Wqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YusULDKtvbaFl4EVjjwq8xCVpUXm7QI7zzqzoLVeBuI=;
 b=IZBixrWGcNhJoTj1xuXITdC7Grfx3RH778yXdz1S6wxCPDlfa6MRJFmog5uAZDV9UR
 wbRdMG4Cyd0HzQ95J1yP++LCh60xz7szCCdH+11D2qLOXnsOWOESBp5P1PahBK4Vgj9Y
 Tuh5wgOkZb4d/DrzsqKznipv/nRZhYgTlZMp9UUGuNMqyugKW6CpnanuzRONl5Uqkmfg
 3wSepSsYizatfYXII+tPkVnTMQiq46qD8JH2XjcaPLm/qk2MzB8qZiKeSELiyI+1EPma
 ZCv9AVDaDwVKvFoR7io2N/ExHjE96iGgKJbM712oxWY/r/c7mmDRywTOusrSZnjgu18n
 Pffg==
X-Gm-Message-State: APjAAAWGu0lvkteQL4ELmVYUUkslci+nKUtZHyo67Gilcvrk64YcrgdS
 0PT58C8RRDvl+AbqdgLgJmH7RYiLbhQSXCKRq8E=
X-Google-Smtp-Source: APXvYqzSdyI4sNlpn8VOfFJ3mQLAKcdxygNOIblNaIK5HBO6A5//BJ9WSLuwARQlvQAg7YW5y6IDIu9f0XmIIYbO0ZA=
X-Received: by 2002:a2e:a311:: with SMTP id l17mr17966337lje.214.1563305305275; 
 Tue, 16 Jul 2019 12:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-7-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-7-git-send-email-aisheng.dong@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 16 Jul 2019 16:28:22 -0300
Message-ID: <CAOMZO5CdBhJmdbavfWzpx0YPhAXgQvA+ik3GMz0e5U1j6ytyHg@mail.gmail.com>
Subject: Re: [PATCH v2 06/15] arm64: dts: imx8: add adma lpcg clocks
To: Dong Aisheng <aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_122827_322896_62669A81 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <devicetree@vger.kernel.org>, Dong Aisheng <dongas86@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:

> +       uart0_lpcg: clock-controller@5a460000 {
> +               reg = <0x5a460000 0x10000>;
> +               #clock-cells = <1>;
> +               clocks = <&clk IMX_ADMA_UART0_CLK>,
> +                        <&dma_ipg_clk>;

Putting the clocks into a single line helps readability, even if it is
over 80 col.

> +               bit-offset = <0 16>;
> +               clock-output-names = "uart0_lpcg_baud_clk",
> +                                    "uart0_lpcg_ipg_clk";

Same here.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
