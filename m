Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3FD15565B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 12:06:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlcS8LEbwFLsPN19qTsmFc0+w9GGtdicPV+M0Yz8f34=; b=atgjLKeErmd+3F
	NkQjWTdYcjkXMcd5jFjUV8pU/NY5aD/rS/DZI7kxsoNMLjPduSTHsXwlv55hh36lW6AyvbhNzAYYO
	01v8zZm/0qTitQz63jyfbtkOMg49Dyhkn1VWoySMxAS3UlqgDelUVZDr/4nzyhBaDUGrXatBRFh8X
	FAhxB0yZC33JPnVpbv6C1lC6xxrBxTrqRLcrbHU1UAr42tkGggRxJ/SByd+Zme/t7E7TO6n9yL3Vm
	AnCW8nYGLKIubwb7v8gpE7H3YrFwI8Gy70QhHqzk3gNsPEgh510kWiUVXTd68yXZY40DPYR7IKsF6
	ddB0T5GoPtUdlLdzsstQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j01T5-0006Bp-K4; Fri, 07 Feb 2020 11:06:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01Sy-0006B5-Ez
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 11:06:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id t3so2149372wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 03:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kDpqIQHMvRBYKt5xeHhPjweUUqEWRQvzpkXya/wCUUg=;
 b=JPoQVHY1lXyIlR6WpWlCoC6OGL7RlRZFd/kQqBU4wVkrPg7xTFkq1QOXG+vygc9Xl5
 sEv7MKKrZc8ZRi+BwZoZKRoGlQJRGduF5idiU1DUJhvWDm2lcRbfn0kuHHORyMvVknME
 vlexSTbZngIqBmsdTky5O5aQKMOrUZ+OM16ZnFFbH4vnrNKOGabUKkZLeBEirLBB8OTN
 oc5UNVpuhIz3avNSp13ibhxF3wvaEs/8vz2AUJxkkbmgAI2XBRI57g9xby8bm1MphFNx
 7rMJ+sQ+GOnz9/RZiOIawBhevXVafMQ+TJG7SlgYMoe1mJ+AhHQbYe9dUD5jaDBsxW6N
 3ZGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kDpqIQHMvRBYKt5xeHhPjweUUqEWRQvzpkXya/wCUUg=;
 b=SFYcq+BV/kpllpkY7JnCuJ2pNaQSCtYCiaXjpUQHyYkKpW8Rs82EiNt4Aya0Fj7USz
 cx/aoTfxojNB98T+4L2nYr3EwA2+K+9/LFoG3HII/2bq/HW0NI2noQtVX+wkZKcW0wb5
 0cD6UNtLYC1v3dyG/Dni1YD0S506eoWeWg9jUd2BUpvdgYXv6e0qAlsk5cd7gntthnui
 DP6bbjwEOU30Jk7RGHv31HSpQBnWgzkxMFQlqSzOmn7NGPCn/hIFF34KtFp3otTmyOg0
 CQX9NHqeZz0HZn+MBALdzKjuAOUOURljSQgoqNg6LWRZKnl6ohyVcWsV+ij+frES6lha
 /ImQ==
X-Gm-Message-State: APjAAAUZWx1QXY1NcvXam3cQkCX+ytVzwokjAKNFybayr6lLdGQEF4G2
 PH8fS/G/0Uo1jnNJnEIlLLs=
X-Google-Smtp-Source: APXvYqxSVDBgVjP8RRsGF0l25WsdUK5txojGab34Gi9pD5H4Z3iOIPVv1PJkM1N7YA72cstH6Mn4dA==
X-Received: by 2002:adf:ab1c:: with SMTP id q28mr3969185wrc.425.1581073590595; 
 Fri, 07 Feb 2020 03:06:30 -0800 (PST)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id e17sm2922751wma.12.2020.02.07.03.06.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Feb 2020 03:06:29 -0800 (PST)
Date: Fri, 7 Feb 2020 12:06:29 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH RESEND V5 00/11] clk: imx8: add new clock binding for
 better pm support
Message-ID: <20200207110629.GA6975@optiplex>
References: <1573993519-14308-1-git-send-email-aisheng.dong@nxp.com>
 <20191211080525.GS15858@dragon>
 <AM0PR04MB42111A436D719D321ADB479380200@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <AM0PR04MB42115D5A9D431D6EEA0C8D2D800D0@AM0PR04MB4211.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB42115D5A9D431D6EEA0C8D2D800D0@AM0PR04MB4211.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_030632_499791_93542A60 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oliver.graute[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/01/20, Aisheng Dong wrote:
> Gently ping..

Hello,

what is the current status of this patch set?
I'am running this patches since november on my im8qm board and it works
very well for me. So I'am interessted to get this into mainline.
I there something to improve? or to test?

Best Regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
