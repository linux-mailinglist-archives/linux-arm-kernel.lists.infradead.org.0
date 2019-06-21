Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF164E001
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 07:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNps3Guwbo3oS/gRKN3mhW5QRe4KJvvHt4TYamGH+TY=; b=WZPzbkJGpIUsZG
	9QgGBmtlTPTZHYtKBW9nB5+P9C6peIj6pBEFLXkrAv8nTpAHW6Byy4FTWgJ6b4KpRSHxx8/RMrUti
	lv7H6izkpWCw6khkkkO9Kls68BSAvyLdJW6M1H87bfnwuntV12G48GoeQwtweG2UFwpKbUyV2zrba
	3cwidwvNw8sE0YxEPUP0n5h6J6p5ZRaxtLYGmMs8dwfKaM1P+nko5y8eRVKu1BquSUqunvztXgWai
	jcsb00CdNqPkWvc+5d+WW9gyOwsXJKtzUH1gDO1Rlm2buKW5GhrbSqeve2bG/jP+KWS0eFrRNkoCM
	G9Eno6zOhANXbwoP+MyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heBwq-00058A-Aq; Fri, 21 Jun 2019 05:18:52 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heBwg-00057V-7X; Fri, 21 Jun 2019 05:18:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561094307;
 bh=j+9ugRgkr5cBSkti6gAGZqjZFQcHl631W1bjAG+QsjE=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=KoDkFGBqZBhN/4hf75by828j/9iAjlQ22DPpPgya0RNvjfYvCYYTcTswpBnocvVCc
 BfYgOrYnoGFIySHWc3uX4CNXIEIbUjgz08xro1UyySSSIr6a1cfTZO5w5F/d/xCdKB
 OO1Bldx+xg0a9yzlLa/KdE+vs9LEaCbScworq3Y4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.111]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MVe87-1i6QbE2RwN-00Z35x; Fri, 21
 Jun 2019 07:18:27 +0200
Subject: Re: [PATCH] i2c: bcm2835: Ensure clock exists when probing
To: Annaliese McDermond <nh6z@nh6z.net>, eric@anholt.net,
 stefan.wahren@i2se.com, f.fainelli@gmail.com, wsa@the-dreams.de,
 swarren@wwwdotorg.org, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20190621042626.19998-1-nh6z@nh6z.net>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <4dc45e03-7c83-b0b9-7579-c06d028e0baa@gmx.net>
Date: Fri, 21 Jun 2019 07:18:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190621042626.19998-1-nh6z@nh6z.net>
Content-Language: en-US
X-Provags-ID: V03:K1:c75dy311Of691SxJooNiGiXzmy6KBQDS/U9SPRQ1bjOaTtL2e2h
 hR7LPVicOqrPl94AMehQfG5qbDNYEROKqOjAHCWxKL9oqQt4T8FW9PpguQmERg7CQ8AEhys
 sGkfs3OWvwfGUXjcSYqPZyAwd9jGf4XA5yuZa2WZ0oXIRfdQ0t1e8pFBpscP50YV3dPnMiX
 tp7vIF9jf2G6SIx2sNnZw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zneOUG9QPcY=:mN+OqZKdeMIf6t65c5tD0e
 +9V5dr+5xcQAWNepcqYSfgSTQDjcdVA1r63snhj/ZPfa660xjs7plsnsKBOIrioQwqjtcIljJ
 LCEWONLAM3lyx10IZH6qaNUdrc1PVAd0rDcnxHKkyzJwzRnUfBjAs7xm+3A9c2XURoJsj39hR
 Ar05A0UrR6j/C8j0eOWhaWIUty7yjwnThS3Ej95CCneVJ40SmlsPm/SHs7PBl2qoeKCBoZyEN
 rfuZH64TzP6EjVwEV0VHuxrjF37w5w9HbZFPdJi7QOT8Y1leKubz1E/V5vJJF6RZd035gvnwG
 o9KY7bG5KGJZNwo4OjydKa2xGQu3F5Expcn02WVSmc9SeShRR41Kil7O055f3Cw3To+BhXcPw
 QdrStQWTcN5JINT10Dz9u/lP6TkLDVN95uYml9Vlchi6IXhR/4OHQI52ZeW8TLPf3zOYBP/NG
 f0f7gBwxNt+mE/9Qw5VtMHt6+031aEp1lYfDvi4i6R3p07ddtiuCqlndod8QqC45oR/5pTddk
 OIkksHrYKUIrVa64DYv/TmngzvC871soyIin5hSRnDkHDlQZWrTlidvPryUZQ5pnlb8fd+bYw
 pZzcph6QixWdqokZ4NwV+ARON1EN1VBkx51qAbe/dwBLdWHFcXpa4gax4WOBj2T60s+0IVeUn
 w03sLY9izJPnFIHxNYi9LzZWx9IvDEOTijR9tfTDzte6vhzjV0HIeMsZqA04YeHd/aau7RTU5
 aoWjbcJo3Uuq0cWtO9t6aJOwHhU4qgRxG69kcFsRazdcJ1Ubrpfb57NIVh+a/PL2mhMDzapRR
 SSap0VL85qN1zXqY8gy8m9BXv49mAuKfPaLz7BX5LSx3O4lf5ZYwYzKgX82M10dGXRtxQRSE4
 3oAhX+KsZzQidbXLvnBhQwwGsJKYfNZQcHTAnCQ55hn0hajq6Xx8DzPxK0QVRCgJThjz4gdge
 35n07p0T31OQznKpjPkLBqht3SXh/9RFEn92gJHXSFE/ppYVeM9lq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_221842_676858_2524B25A 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: team@nwdigitalradio.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Annaliese,

Am 21.06.19 um 06:26 schrieb Annaliese McDermond:
> Probe function fails to recognize that upstram clock actually
s/upstram/upstream/
> doesn't yet exist because clock driver has not been initialized.
> Actually try to go get the clock and test for its existence
> before trying to set up a downstream clock based upon it.
>
> This fixes a bug that causes the i2c driver not to work with
> monolithic kernels.

I suggest to split the change into 2 patches (first reorder probing,
second clock) with a small cover letter. This makes the changes more
obvious and easier to review. Please also add a Fixes tags to see the
related commit.

Btw please use my new maintainer mail address

Thanks Stefan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
