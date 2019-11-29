Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EDC10D21D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 08:57:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=1L7uxkcqQkpQcsWUGIwVmpo+ickBS0DTAK/kU1iQ3Mc=; b=PmNZtWvjDkpSzE
	PGr4EKxYbAveYiVmgdx6cIUPseBMP+iY2iRZarX6aCGUWkZcUS0zugRg9K9sgmGqHGZCeQPqBLOqX
	R7y8rHV3glIZ80Z5eLADxvSurGinExZzwd+dYJXhUdbh3nO7vZAR1V4PYMDueuciksdioi4/ZfnXr
	0RJeNoxinURKYVpETRkaP+uCTqnpfetWQ4dWzmsT0R79SixHnfUaigyhWyApflU36JagRFHDEclGG
	qX418YLbTO2rmD7Wdk3qWZVlnSGnPTiokY6OmA0gnpxZxLX82NbTpROcOtNBqSIdYwOStKPhnIUBF
	Si4/k3hkiMqKQNcKhQyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iab9s-0001vX-Vu; Fri, 29 Nov 2019 07:57:44 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iab9k-0001v3-Et
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 07:57:37 +0000
Received: by mail-wm1-x342.google.com with SMTP id p17so1034729wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 23:57:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=hClcGyZUyRAdPFEjS9zD1iTFQS5wk4UVwSxzy8NeBsE=;
 b=oX9ygkYVmfkmhy6yyVe5qnMqSvemShkjRnoGFQwH7OJmhzPZH5d1VXD4Z3Sx71BBfN
 OmqfwNUjNEazDwZ6pgmaO/EbVx2503hXI4aZwkUfbHFKJ7u1TYerNMrH/huLTXmZOojX
 ahP9UJAX5MYBNSC8wAEhjh8VQQNkOfelHW+79ryd+XKSJXWvarrlVQpRtemr3UMXXAUe
 nfgrP/MiD+QbYie1y9yVFntFeRMzyalEwWxFbCcEDJkzaGb8hWhY0jfQqg3iNHycfEhW
 nkOvqZs1uifx1VTdoJSQ3+RCr12fIzmD2yTuj4KqS9r1i36n7AuXtNQzR4t15BLjRQaF
 YXPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hClcGyZUyRAdPFEjS9zD1iTFQS5wk4UVwSxzy8NeBsE=;
 b=RWdXSP5CM7c+wi0OaRpZ/L+s6/mBOJT1wifxxE3OrzpQNsGQ2zPRYEKlxqx8xNq8Cz
 aBKSPXdprh9M4xk8XdoD4dAwTCdUCJIwJG/xRXL74OcYeFFAGtSNM31TZU6zmJsTvbu0
 8CWMW0NF9jdSOmzYsheh52n6zgPOik5UTwr+3hb0frZj2fQCHfmu3oWtWSFUPnYcxs25
 1SCqmhsWmqtQ52oaEJDq3xg8/cxNc2w6CHGx29DCxc2yyrd23hbyNV5DB/LC+rM8ms8H
 oMroif99rgN2n91IhZRa3pp/rXT1Yv1U4PHInIcL/PQ/RDtkQvRy2HFh1zaoOAXwAm0Y
 qxfA==
X-Gm-Message-State: APjAAAXLOMonz4vfXafsR6f6dw5VQd6IqjfldWdvD/GGAvpRn2MX9WMc
 5CpVQhHBXK3+XspoDZQzfUY=
X-Google-Smtp-Source: APXvYqzzIc2cg6FFoHZWnQAg16nZrA34PO73gfpwf17n8oEimaxGpOKXuawypKW0iXLZZluncDmwgQ==
X-Received: by 2002:a05:600c:21d6:: with SMTP id
 x22mr13267705wmj.126.1575014253972; 
 Thu, 28 Nov 2019 23:57:33 -0800 (PST)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id c1sm25745470wrs.24.2019.11.28.23.57.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 28 Nov 2019 23:57:33 -0800 (PST)
Date: Fri, 29 Nov 2019 08:56:49 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [RFC PATCH 1/1] arm64: dts: added basic DTS for qmx8 congatec
 board
Message-ID: <20191129075649.GE2460@optiplex>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ed8b6139-a67d-d5d3-c65b-260d020c95e0@free.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_235736_499479_43CB19C0 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [193.47.161.132 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FAKE_REPLY_C           No description available.
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
Cc: DTR <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "netdev@vger.kernel.org Linux ARM" <linux-arm-kernel@lists.infradead.org>,
 "linuxppc-dev@lists.ozlabs.org Pantelis Antoniou"
 <pantelis.antoniou@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/11/19, Marc Gonzalez wrote:
> On 28/11/2019 10:55, Oliver Graute wrote:
> 
> > On 28/11/19, Marc Gonzalez wrote:
> > 
> >> On 29/10/2019 13:23, Oliver Graute wrote:
> >>
> >>> +&fec1 {
> >>> +	pinctrl-names = "default";
> >>> +	pinctrl-0 = <&pinctrl_fec1>;
> >>> +	phy-mode = "rgmii";
> >>> +	phy-handle = <&ethphy0>;
> >>> +	fsl,magic-packet;
> >>> +	fsl,rgmii_txc_dly;
> >>> +	fsl,rgmii_rxc_dly;
> >>> +	status = "okay";
> >>
> >> The two fsl,rgmii* properties do not exist in mainline.
> >> I suppose there were copied from downstream?
> > 
> > you are right, I'll remove them.
> 
> You should first check what the downstream driver does for them.
> And check if there is an equivalent action in mainline.
> These delays tend to be required for the PHY to work at all.

ok as far as I see there is currently no equilant action in mainline.
Downstream linux-imx use rgmii_txc_dly and rgmii_rxc_dly in fec_probe()
and fec_restart() for some imx8qm-fec and imx8mq-fec PHY delay quirks.
Perhaps this missing quirks are related to the random crashes in that
driver I have with imx8qm.

[  129.211959] fec 5b040000.ethernet eth0: rcv is not +last
[  129.217300] fec 5b040000.ethernet eth0: rcv is not +last
[  129.222647] fec 5b040000.ethernet eth0: rcv is not +last
[  129.227966] fec 5b040000.ethernet eth0: rcv is not +last
[  129.233282] fec 5b040000.ethernet eth0: rcv is not +last

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
