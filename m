Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BE6122B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 21:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnrwQyc8rxjFBMDwAULChlrO3/qopD1L2uwnjlB3KCk=; b=MvGL8enb+RMcxO
	TLN7EvmG0u04vzHWbiNS6OUnvw/vKwYb2kBs4+M1DD8r3sNEofQLun6TjcwbqX65cwjBRZFO1Xe7j
	a3vqduUikyuR3jjK3IBcBEQqs4NdQ6h+0tWRCYr0QnKIXqgxLdpeVfiNoO2wgyDFyyuP2gWRA8FYk
	mvxZipU04JMpF5c4E3jYvfXPFPLmveXsOGdI0PDI0NNfTV/wxH6NrPPfxOGcN/D9wRw6b8Opz9nrM
	pMaXwJgrMjLVpfwUZxYV5kS6GVvk4Lc9xyYYCawTGEFfcZOzRzs8qnvEpLvS29nDMpqzVIMeNYkP6
	AzQZ+jWLYs21N5OQGcvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMHfT-0007W1-96; Thu, 02 May 2019 19:46:55 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMHfL-0007UT-BO
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 19:46:48 +0000
Received: by mail-oi1-f195.google.com with SMTP id d62so2606992oib.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 12:46:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ukaD/e1wsPHZwUHYPs4ExgkkIgYCdRZ6nP5LebCyPy8=;
 b=WLw1g6SESL2dFtnh9h07Sya/HS6kBcqFGt8fBrbh2ghjn/NLEbrqUEOMyDUcYoYRIl
 7ErqMLPuZqAt09D5R4mwxrc4nBL62/8BHcEsQQN0IHTc84mc7nPKfsR3h70kjQvawrmF
 nc9/uJyIla9AIl2rm5oE3msV/+Xf1O1LlJiUb54MtliwMLZ1kfe6SOIyS4zqdYBZhrAC
 kbr7X+UXbyZGvbL3hIHp9jriFxrDv1B+U4pwsh12GTOvFF6f5AKK9QgENdY/YouBv4Fz
 ZeDDo1QSVLxFIhVvz9QfWAtmWEZAehdiy8taoK5HWahueD4uZyaT6RGzGbOKTa1ZtDg8
 ac9A==
X-Gm-Message-State: APjAAAWQ6m/ePtiLDHnY4c3BNCPHEIQy0G62GA/kbosM1IuhR0bFc3jf
 QXkKpZezD9QPHo+U0ogRZw==
X-Google-Smtp-Source: APXvYqzTtIOd2V14edKEnwXIDHP7nUB9TRcwqMxGmBTCC92ozeHhdBjGJlpAXqibAAn3eR5CtlYwIQ==
X-Received: by 2002:aca:5809:: with SMTP id m9mr3685987oib.88.1556826406198;
 Thu, 02 May 2019 12:46:46 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r65sm85515oif.47.2019.05.02.12.46.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 12:46:45 -0700 (PDT)
Date: Thu, 2 May 2019 14:46:44 -0500
From: Rob Herring <robh@kernel.org>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 4/7] doc: dt-binding: usbmisc-imx: add compatible string
 for  imx7ulp
Message-ID: <20190502194644.GA20807@bogus>
References: <20190428024847.5046-1-peter.chen@nxp.com>
 <20190428024847.5046-5-peter.chen@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190428024847.5046-5-peter.chen@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_124647_388702_6749BCD7 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "balbi@kernel.org" <balbi@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Peter Chen <peter.chen@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 28 Apr 2019 02:51:23 +0000, Peter Chen wrote:
> Add compatible string for imx7ulp
> 
> Signed-off-by: Peter Chen <peter.chen@nxp.com>
> ---
>  Documentation/devicetree/bindings/usb/usbmisc-imx.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
