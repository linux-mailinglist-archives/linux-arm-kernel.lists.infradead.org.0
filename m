Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738661D7B90
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DM2PGOTeQt1K5FOfaeYfCpaamcTXp3hxJssCXgviRwU=; b=SQIIUP5/rC9UdV
	WDnYTDIpL94CR8lMTYsGVzPcjePRSQ1H8+d+0LBAeORw8UHwGoLOBss96cAoIYzlZ8+rkklYHz978
	qmwvNJzR8CKEMHB9nht5/FDKKCesg3loD1C33EFg7iTObgRFcZWd65oJHLHtyHJx6Y+nsy+QmBXYb
	+UNqdeqlZzsMseHucOvhC6SpWDorJr9yvqC7sV/Jqv4YLGkxmAFJg1992lbvk/3pG8grHyVS3w9FL
	VKkslYt4rYQFSjXJncisMdZQx9cli6hjeVB9ou5ZkuBfCowEFcYZ6jc30Zb7Rm0QRqo3RlNfTIlN/
	oT/AB97rwWj5bT1V+CYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jagzn-0006il-0Y; Mon, 18 May 2020 14:43:59 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jagze-0006hi-NE
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 14:43:51 +0000
Received: by mail-lf1-x141.google.com with SMTP id v5so8257653lfp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 07:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DyWQUbdQsaHneMIkUnV+0Uk+0v8VHubO0aOYCQH2OTE=;
 b=ozieOzdt8X9dRrNZ2ZBFb/NJ0RGMHbQ3G0pKcrAI4K8deYDIHTwEHkizIvfUP2PJf3
 0jgF4HQmgdaYp1xOhtyN3xLe0Ntm40NsHOIxwe56JxpTa30T4cZvOVlwDhOFBXDOGate
 Wpenob7UAHBnLuJQ/4BT8tbW1BTo9qk//+WZ1zsA50SUULGQ7H9xeU9IKiQfCwOB+6jq
 qWuBcMqRn9aVcwpJRUSyfmr2db/NuDRbd1ElsaN/e8NsTaPFme/pjzrcBfrmW0ZESFoh
 ia6R8Yrf92SS6WwoRdKM+mBeNbDJFizblaBIIi/dWxeEZbpJHHWknoLXa7chPAl+QRsr
 o9Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DyWQUbdQsaHneMIkUnV+0Uk+0v8VHubO0aOYCQH2OTE=;
 b=Mv3sbeWNyVH4bDlkzmWWW/U6PqeuVt0lbYwcqPmpJNaoWA+AZ2ooiTioTVaILLQ7uu
 7NE6GHYOse3Y5wL6WAMf18lZRdqYFGQc/JMX6IcI7A023mA8w0bWIBh4n5ppq1vL0L77
 IuOqsXVleHycl2Y6dO5kaZkDt/Yu2SiPXeHqQMkU+cqxQaYYNIfVoytJqpBd20Ya5TCk
 esmkRltWKfK87djbX7FPKq/400fe4LiyVdXchMW24yElHhjxoLpKg+jub6dSa72tPraT
 uQZiBzy4uNLKgYhdOT6Hrbujp1k9wT178bOCHv8BxAKgw8O9w7ZUh8y9WSc0I4uBZTaU
 CH2A==
X-Gm-Message-State: AOAM5309jGWPjLvYzAkWFGe/x3hxgmREMBAqxM5ZzZuN8Mzs4Xcrsm7g
 MKChQNV9PMhcMGROESQgWUu2yHHK8wwusb8ih7c=
X-Google-Smtp-Source: ABdhPJzqZ8nVo/dLSyrZUSSg9UbXrWgh7ZRtGhpGbCTSwOmErjkT5zwNhl9/wuvY2EmNrcCww0AbHYRzQN6W515PhCs=
X-Received: by 2002:a19:c6c2:: with SMTP id w185mr10282694lff.69.1589813028498; 
 Mon, 18 May 2020 07:43:48 -0700 (PDT)
MIME-Version: 1.0
References: <1589810819-19851-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589810819-19851-1-git-send-email-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 18 May 2020 11:45:07 -0300
Message-ID: <CAOMZO5BeBcvmAwEJTUhHSn=_chx7OVkkxj2oB+50hGH-7H7SfA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: clock: Convert i.MX7D clock to json-schema
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_074350_774009_2E2EAB4D 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Frank Li <Frank.Li@freescale.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <Linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 11:16 AM Anson Huang <Anson.Huang@nxp.com> wrote:

> +maintainers:
> +  - Frank Li <Frank.Li@freescale.com>

The freescale.com e-mail domain is no longer valid for quite some time :-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
