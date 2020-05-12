Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A311CF822
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQBSpQXnRJ/iHOE9Qevvdsbn+MYlxqCYvv3Q3Xbds8I=; b=OGVXik1hsrN1vb
	/BKS3p37zGOsIdzlnu+27Q/njzBlpbccGp6B34IdM1unsAKu7ItVkCUEnuwt/YQnlaM6EXPgHpSMY
	c6pM5NDOqa/zyppH/vD78yAOESmDLKy1fnhAj8unZbkoBkiQyCCecrkp03AZt4N+hLs0VlE4ooYQw
	HnMr9BK0wsJVJxx4Q9aWsJ6Rchqi7fMLCtrRvSb+Av++Bz4w96ICNqjaCoaJaWUGknxrmz1xPqvcl
	lFQVrwguXyXvWUnix3SFbLYa2OHzxQKWQYuuFxB+rkni15vgQINRyBbfMQdNYAiq+ogexH6+YrF7j
	gIeOucxaGYm3yr8U7fhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYWM1-0005oX-E8; Tue, 12 May 2020 14:57:57 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYWLo-0005o4-D2
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:57:45 +0000
Received: by mail-oi1-f193.google.com with SMTP id c124so18239723oib.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 07:57:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0RjlmR6YuJe5OFTdNqr/waaHWAV5lpqikYC4DfnGsDg=;
 b=B0RWHyVfMduzAGUrgFw8VzwM/MRIO5spNSS1fncrn+fer0URcbrld1fc6uOyZNHATE
 H1QFRsr9zokM63Z8xvMWNq4j/570euKO2MIWE2UNkS1XsFs0GkU/yJ+7rZVzXV1NfdRf
 UBPwVtRRjuTeUigZXpzAKSaUM9LG2F0r2YCvAASHbFOGYSODvEJdexakKw4rNHTzVwKJ
 Wilcw1XFV6JPWrBP8OdzphSv9uEN5/YtJ06CQUZya5G5v5tAcFWpdZDLn4eB5XO8QGHC
 5zjpYUmfa3vMUf9IH2xXt0c+uqEZs3IginGS6phd5exQ5a3dZ9cbTSDt8AwvntTnWCtL
 p3BQ==
X-Gm-Message-State: AGi0PuZvzEQx58IYQ2FgowUZn2ee79jEIr82TjistuqyMtWrx2lsaEJI
 4SOrJ+kaaYtNtxrXN2N0DQ==
X-Google-Smtp-Source: APiQypK611Fjk8XOJF2hXT2tzKw9uv0/tp3+vM3Z12fb7KSgcfstQYqV42iyNBPHT0pWjJ1kOCMV3A==
X-Received: by 2002:aca:816:: with SMTP id 22mr22840562oii.51.1589295462251;
 Tue, 12 May 2020 07:57:42 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m27sm220241oom.22.2020.05.12.07.57.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 07:57:41 -0700 (PDT)
Received: (nullmailer pid 4113 invoked by uid 1000);
 Tue, 12 May 2020 14:57:40 -0000
Date: Tue, 12 May 2020 09:57:40 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V4 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Message-ID: <20200512145740.GB25671@bogus>
References: <1588207921-20604-1-git-send-email-Anson.Huang@nxp.com>
 <158865854354.11125.10611865219975766594@swboyd.mtv.corp.google.com>
 <DB3PR0402MB39164125CABC889C5DEE5D8AF5A70@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB39164125CABC889C5DEE5D8AF5A70@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_075744_444770_F4170497 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Stephen Boyd <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 11:32:42AM +0000, Anson Huang wrote:
> Hi, Stephen
> 
> 
> > Subject: Re: [PATCH V4 1/5] dt-bindings: clock: Convert i.MX6Q clock to
> > json-schema
> > 
> > Quoting Anson Huang (2020-04-29 17:51:57)
> > > Convert the i.MX6Q clock binding to DT schema format using json-schema.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > 
> > Please send a cover letter next time. Who is going to apply these patches? I
> > hope Rob? If you need an acked-by feel free to have mine!
> 
> OK, will have a cover letter next time for patch series.
> 
> Hi, Rob
> 	Are you going to apply this patch series? If no, can you advise who can apply it, thanks.

Yes, respin fixing interrupts in all the patches.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
