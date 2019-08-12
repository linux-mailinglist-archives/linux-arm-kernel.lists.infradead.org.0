Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C8889D42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqIEauqhz5wdCG4NcW5MQa7DS9MLBABgEc5eNE5v2I4=; b=Pd8RKPNKWylRLd
	tQJHbjaIy60JOa0vUVeK3unQnDBFYnIDvLgLzSFN7oWRTqJxnNHXP8IJdxtOaA6HBGxZMOFu+X9oX
	UaTTQ8mGrFIAk7GTRPcvt3urM75ARptefVvcnG/7ttUMmdqZioVvKX1aQP5eT/Ze5Vt6IM5lRUTgX
	vOB/DrLozvG1qAP09u3N5kclPGDMim7zy89ZFaesx7+FGAvpohOUGWF+TVWOc2P7TT9HAuVHajV0P
	f04SccSsTIDKhz51d0kblNthNkCTzIHqMg2qalVFuv37ox3c4jHvtq0Pmvvoja0xivYMehJzJNLt1
	GfUsMhN148ijStDcczAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8fO-00057a-6t; Mon, 12 Aug 2019 11:39:10 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8f8-00056Q-Jz; Mon, 12 Aug 2019 11:38:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565609876;
 bh=cqTzwEWo2DoYlZe7Z0sB1ny2nOtt1yNZ8bt6W3A1KII=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SHtmwssOFA7m8ncbj+fKxg4+NldWg44nOIZudJyEmYYfzmraAQiiAFMqUmEF7SkOC
 CvPMkkHknAz2so4e/Oiz89+hZBW9KpLinFdMz5l/3KmrGXybOP9325tSyPjxhH7Ij8
 NuW2hD0H2kzD9LTusmNuSoZdqRlnCFBDKqOIhXXg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.152.193] ([217.61.152.193]) by web-mail.gmx.net
 (3c-app-gmx-bs80.server.lan [172.19.170.228]) (via HTTP); Mon, 12 Aug 2019
 13:37:55 +0200
MIME-Version: 1.0
Message-ID: <trinity-738d59ed-ecac-4025-a729-0888eaea1f95-1565609875829@3c-app-gmx-bs80>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Lee Jones" <lee.jones@linaro.org>
Subject: Aw: Re: Re: [PATCH v3 01/10] dt-bindings: add powercontroller
Date: Mon, 12 Aug 2019 13:37:55 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20190812112507.GR26727@dell>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-2-frank-w@public-files.de>
 <20190812102035.GH26727@dell>
 <trinity-a6c06411-16d3-40ab-a4fb-3494131c8ed6-1565608221532@3c-app-gmx-bs80>
 <20190812112507.GR26727@dell>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:rorlieaqUDCjznq/tycElIF6v/GTKDuIZAUVviT+MmLqGw0eg4RkqZ7ycwz8b8lDdV4+O
 2TVUoeCUbv0y6rLGfW46rV272fwlqbSJCMfmM9T11BdNY7qytID/LYU/aj5V3HEiQIOXDdtejNmh
 D4lAYBCcbSo4fblFEtXcioNffyMD/cw2g3ibWb5CicM8DdVgulUL56qIlILE5iCgLt7ht++uYcQi
 gILb8XvcFlMgYLYkslMB142bpJ7X5lpUJuIc0+wP/tbrjSep5Knsj2Ml0HZgpjqkqCrn7MzQ4N7/
 Mk=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KAhLhdHEyW4=:JfL6yTj4iO6NngvcIzYiG7
 QjaNkg7fFf+twakK9TwhwslxomlUmSaVBcvwfsFDit/4YwtFxcy+X9tE4bphavqoHK2AaUMRX
 Gpq2T4Dy2MsSyjsif//ggHEkBvPHW9ZQsOQmfSEgJ9rF3c3+Svu34dq6rg3cd2dRQC6KAG8fz
 YNalJ9iYQQoUxOFE0/+mwHUtIgujSjnVr5dXmfDXLJPLyQhgj93uaBzHtm3EigYYowGXCV+bn
 xmkl2DCjW0PrleBNebXYckjIbb7/MuifXCU9WxBCA02ooV3ZNctGcca9pH629Zy4+WFEj2CpK
 o/swOjGaY96QYPT+bRm8DsCLCgjqQVG1NlYEzUoMcn43TgH0K2CLeXsiiFzSE1XEj+aqkbbsp
 hGlB+hj+i1uQ1IRY67enjsiuQB6FmXiEHV6kRAfRQtH7vggot4Vw3f+XbfzCGr9tha8+C/7c7
 JgKH2a9727wcq01Q96EuCaUR8SAFb7hcH0ry17HgykirMGKv7kgASPp8DvKjOahAQwqlriXlb
 k6z26pdIWqwqNFPgwMV/3/dJkC4Rey3pr4slWt5s/opixXZDyJrAkDSvcd2jn76UeUOQsd3az
 0p+gPDD93Oy4F1I/8MoQXHFdSd9K6l/9ZRS6KpRJnrz0ehn99uKqhDIVE1fCE9qrDq8spRGqU
 Lno9HoEwStbEYpRgXyPFDZvJ79YoecY5veO+A9EZyZZ/cEQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_043854_953394_87583C32 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>, Mauro
 Carvalho Chehab <mchehab+samsung@kernel.org>, linux-rtc@vger.kernel.org,
 Allison Randal <allison@lohutok.net>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie
 Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 Alessandro Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Gesendet: Montag, 12. August 2019 um 13:25 Uhr
> Von: "Lee Jones" <lee.jones@linaro.org>
> It was an example (hence the "E.g.").
>
> You will need to adapt it depending on where the file ends up.

i saw the e.g., but i wanted to know relative to which directory ;) your example mentions that it should contain the dt-bindings-folder and i think it should be relative to current file...

have applied your suggestions to my tree

https://github.com/frank-w/BPI-R2-4.14/commits/5.3-poweroff

please take a short look if i don't miss anything

regards Frank

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
