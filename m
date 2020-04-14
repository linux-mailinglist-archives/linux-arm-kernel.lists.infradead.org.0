Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6C11A8E13
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 23:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jZmJ0fBSR+pymceEFLge1TcT6DpsuV2Y3lpyM4Ai5g=; b=ZSTrVgSYDjGAQO
	cEYKpVCrRlD8fcwE4JXFvg3ReLCUH0QvfwF5ov6HVpnIZxCA+uBwWMKVK7NO+9sBo7lkHaS8nZDzD
	Ptrv0BTvpgSupIZmDJklNAop2X33Vp7AfMPLpTxTHACDiJxeXZ+uwr3/i0CZsst9xoFVk1l836zE9
	Ab85Dap5yoq0tWrKjvtoy6KZQYnwC1l7GhRrd+eV23laXlLeqXTRXkUq3oBzbYae8WvDmNnDKAsSf
	F828xUlvHzq0vcuiCjuBkKt2UWeBAKFLSTsagdP1TF4MKWmzcyCxoom6nB7FeU+sBA/33yBuAiy5a
	9UIJycfMEKMXPT60WSOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOTUw-0001Hy-D7; Tue, 14 Apr 2020 21:53:38 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOTUY-00013S-0j
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 21:53:15 +0000
Received: by mail-ed1-x544.google.com with SMTP id cb27so1668840edb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 14:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6XJggBeqNZwHcHHLY6sfVeMbXT+yRwu9kmL0zKIOza0=;
 b=wO7J5PV5FopClacEDaXHeMrwLMwC17ui0SIQ6zF4hBB0JwsYSsHQcsO5AZjXXbQBqJ
 3zkwayOjJq/AHgwrVV+QGe118BDRodau2efv2VgMEBcbOVNhidTBarndJobl5/O7c7vW
 tfK+Gx/M9r8JRYxvNQDrvcknJbIsWgEjP1VglMGQ8mjWMve+6SkCr/nRvSe8kTMsSd/r
 mu1r+ciy84hDdk+WHmYkTdnrqVNCR9GiNSlR6f2bOYr7YZEojOH2lV9I/YSKRIPol7ed
 e84jIHLgq/3JhGeJU8amfIfUIjbSVgLILi9PeGfXXAAzDqDEmEXQff+61X9q+a1R9cuO
 vIdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6XJggBeqNZwHcHHLY6sfVeMbXT+yRwu9kmL0zKIOza0=;
 b=uQcLQ4xXaKTBfq+xLCd1ZwC85Qifaipa06UAC5f3EVEDOE7Irofo+o30lsgWCfQ1qX
 fXipNK2KoXLTN+UTE4LocsMKFLa7s5NYpCKVp5c14chM4ZYkTYhjD7nUxJklbvvmjNsm
 Q70eHTY5fqRP3Mh2fywdzrrcg3j3gDKjB7xQdKr4i9nqIwZ2dTqjagwb0BLayMAyP4OO
 0kdK3jEhzc4znTUooj/JV+w0jSwbsLHglPdyst8xeAL1ywt0P3PgzGBLvuXlqHsUa9Vn
 5DcnuES0D6kTP9dPnkVQGopLxoCslEzQc9HN+4YBCUeHGldL8L/4AD5JxqofhUPCyW8C
 3ByA==
X-Gm-Message-State: AGi0PuZWgMaWyvK55nDYmSDtjpSuCPCXTl/gghOKALlClE3+S9UcRYTz
 Bsk+PIapmjaELIcRDyspak8P2Era3VfADlDL8lZFGw==
X-Google-Smtp-Source: APiQypLki1g/gVUbhYrj9kqnpCfe34IkYcW0Znyiw/nNCI+JYjLa2TqgKGZzxlNCajxLF4KJ/EkcPl3s1JpnvWDv+lw=
X-Received: by 2002:a05:6402:1587:: with SMTP id
 c7mr3505722edv.61.1586901191377; 
 Tue, 14 Apr 2020 14:53:11 -0700 (PDT)
MIME-Version: 1.0
References: <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
 <20200414180105.20042-1-andrzej.p@collabora.com>
In-Reply-To: <20200414180105.20042-1-andrzej.p@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 14 Apr 2020 18:52:59 -0300
Message-ID: <CAAEAJfAZCq2OWfTT2Vqy5xzpOre3yYDOOP29+Y0n5_oGrrbsQg@mail.gmail.com>
Subject: Re: [RFC v2 0/9] Stop monitoring disabled devices
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_145314_285997_4170DD6C 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Allison Randal <allison@lohutok.net>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, Linux-pm mailing list <linux-pm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Enrico Weigelt <info@metux.net>,
 Support Opensource <support.opensource@diasemi.com>,
 Networking <netdev@vger.kernel.org>, Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrzej,

Thanks for your patches.

On Tue, 14 Apr 2020 at 15:01, Andrzej Pietrasiewicz
<andrzej.p@collabora.com> wrote:
>
> This is the second iteration of this RFC.
>
> The series now focuses on cleaning up the code in the first place.
>
[..]
>  12 files changed, 180 insertions(+), 208 deletions(-)
>

Compared with the previous iteration, and just judging
by this diffstat, I think it's a step in the right direction.

Nice job :-)

Ezequiel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
