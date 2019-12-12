Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF7211DA00
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 00:30:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date
	:Message-Id:References:Subject:In-reply-to:To:From:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=etc/M13vcqh4BDwHHzCCBQxi6gGnXJRtjHoW4rCcT1M=; b=RGLU0FAAlHzytiUn1H2/2p9/7K
	3Ofgs5GRLDteiiUKNt7bxSGHLzWilExERJcmIVJKSa5ixUM09Dre17+FNPBuQ1HWJrMRGOvWaoDKD
	sZrZKSlLvAk94NBbqDNhp40vuqzGq+naxClvJTAMNl82W/WKr6lPae3yTayUKlnw2xPlW6QTcW2+n
	ASiS+mvYuY8IfjvMlKPGjRuC4dT4CgfvcI/lt1+us53uY+xvauxRLs4VotjicOT+0ei60P2EVXRBj
	xA5QdMQdzWu1hpJgFw8yNZpu5ae3rFGdxh0u9OyBlnHe1kv0LnGgyIRRCnRDdP1TrVO6hgBOPJwbd
	2Nr+pQFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifXuN-0003lN-Bl; Thu, 12 Dec 2019 23:30:11 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifXu6-0003kA-DM; Thu, 12 Dec 2019 23:29:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1576193386;
 bh=gtNiGOMaG+hrEDMSnjfH4TheHPrFaKjLS4DfvxSWQJ4=;
 h=X-UI-Sender-Class:From:To:CC:In-reply-to:Subject:Reply-to:
 References:Date;
 b=SYROU9ETIvP5wm/aUkZXv30zCbFjChykztWSkke0CbCHwhC53OxPu1rkVmkikl+qi
 hih6PfRlB4qoDBhJmywBm2O1F51TtXsvyN7cvTJ5Bc3jbeq7sOf50M+8W9Wi4KdlYU
 hKqhurSuymWjvsSn1nwL7CMw0cyd/IpLAjX7HFbY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from corona.crabdance.com ([173.228.106.20]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1N3se2-1hfmIb1iwi-00zjUB; Fri, 13 Dec 2019 00:29:46 +0100
Received: by corona.crabdance.com (Postfix, from userid 1001)
 id E09FC6E85603; Thu, 12 Dec 2019 15:28:59 -0800 (PST)
From: Stefan Schaeckeler <schaecsn@gmx.net>
To: amit.kucheria@verdurent.com
In-reply-to: <CAHLCerOHjAEEA1BpUqPdZvFwHMy11SqC+ZtjdFyManu7iOpBXA@mail.gmail.com>
 (message from Amit Kucheria on Thu, 12 Dec 2019 13:58:52 +0530)
Subject: Re: [RESEND PATCH] thermal: rockchip: enable hwmon
References: <20191212061702.BFE2D6E85603@corona.crabdance.com>
 <CAHLCerOHjAEEA1BpUqPdZvFwHMy11SqC+ZtjdFyManu7iOpBXA@mail.gmail.com>
Message-Id: <20191212232859.E09FC6E85603@corona.crabdance.com>
Date: Thu, 12 Dec 2019 15:28:59 -0800 (PST)
X-Provags-ID: V03:K1:DwsCsXOuYOhJw8V89QklRZ9osgYgHSIQVBXq4pgiRwhkFFmltBi
 3kcHnOCi6FRrCnoXmJm90yFyU6q+EVM3zS/paOZUwCbEjkicKJDTl5vaAIgAP+dE0J7/f13
 TI34F5ggu2CqpTP5XDijGLe2GuipTAa5rtvO4v9gt5QK1hGJHu3pZlAzlPrN6TKfVizJ/Qk
 vSBkzo1D2fH+o/uW3R1dw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:B/jaoG6pxyc=:m7iFg/yWoVMNeBlPMGdFNd
 PY6SNewXxM1s6K5Arb8uvuHEQdAP18gNudbqORo5F23TWR/WJUxzA1UtNu3AII2JRXnco1yP9
 34E6Cnm1PP53ryOE+uq9HjbrpfehMMscaG3MZBNMcc3Zgn4Rc18fRsL0hsO+u9XL3fe23yKPJ
 OZZYBvMynzgA3u5ysEcRwA1vn+2hG0dszBEIt4cpfY7+4hDY+90iNpVbakRPsbyZzRpTGNWoU
 6p0WD3BrfWNXLocPrjW9RhCzWYIQPprmNYmQVuVkygvF6If4z7EREYIvVgZ/CJoCxpqAp4WZ7
 Ox6lH2ZuCxJJMLctljuOsNdsYy3sG6hw61KDw95Qr6Ls45uoo67LD0WGXX0oC+5shUeWS4TYu
 9xmPTJG4koOIMz/3EZb7W8D9tdqmtwS6ciXJ2vPyLEUTA7TvPqITm4XBGHFsQRnKnvZP3MX4J
 JCXVRtf0xCZcSjtiYScV271xpHQSB4vXpresTWxFQz5KcfDt0CxsMPnNzKw5F0WKkg5C7Oikp
 CZtwRerVP3yiYk3Gg6LasW4esN+RGOSMbA4m+UE2Ywr3fghXsw+oSq8KlRk964qrl+1FnESta
 HajOPrIF+/KNsyIXh+PCM5v2DczQcrQ6zQ1uciBHmqO5oZjPT6er2HCYpiOoMxGXoJxaOdt/C
 sdLuC5tK6PSfZgVTdZDu0WJrshGUnGlUpRYdqdIG76bKFFd0kHFVJYfoP5TW3IF6h2DXwBTrv
 qKZf74Qv0jYdYI52FcCW1fqhcRs77Dp6c7+vmK1yrbRfPkzFWmajQ+4/7qY5geIMgf1lAg/11
 3nVXSxdV0CBKiFTHI2fexaxrM7FFym7dcx/4yYFRbq4AIzmuBn9x0a5EHn5Gob5N08nhJRY+2
 nU4ZvtXJ9bS0wD7w6dEzdUMoIQrYBraeg3quxdz0Uy1kVR+uznUXu9X4hpjKd5QOvNCrX1l2t
 TxKRoc8STqNtg53tX5ZbckBNykUlx3ys7hB4MFwBhJymQ6tRuvq14HTve65dhAjozMZ/EVX3F
 DPww8RJdp91u9nJGV68FU10GcQlq4uFG5lqYTkFCPonxAVMu5MD0RYvHb/bj9AU8vwadn2h9h
 pL87dBWLNCJOeeJz50kSTPAD9zvDj2J0lei3KhX4GLeLCzjcPQGmonkOMrfGAZw6nLpDzfvPC
 GFQwe7yvcIdSSF3XammtNlbqWI7GBvu9JKcHXHpCMw33JgV0IuYVhs0DlEFx2slndXIJ3VoDr
 4Xxp4DHhycRuYKL89sd0EIbC6e8RzRIE1VqN8Ct1D7sTpr83r5BivjKLwxBI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_152954_784000_D721C129 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (schaecsn[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Reply-To: schaecsn@gmx.net
Cc: heiko@sntech.de, linux-pm@vger.kernel.org, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 linux-rockchip@lists.infradead.org, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Amit,

> On Thu, Dec 12, 2019 at 11:47 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
> >
> > By default, of-based thermal drivers do not enable hwmon.
> > Explicitly enable hwmon for both, the soc and gpu temperature
> > sensor.
>
> Is there any reason you need to expose this in hwmon?

Why hwmon:

The soc embedds temperature sensors and hwmon is the standard way to expose
sensors.

Sensors exposed by hwmon are automagically found by userland clients. Users
want to run sensors(1) and expect them to show up.


Why in rockchip_thermal.c:

drivers/thermal/ provides a high-level hwmon api in thermal_hwmon.[hc] which is
used by at least these thermal drivers: rcar_gen3_thermal.c, rcar_thermal.c,
st/stm_thermal.c, and broadcom/bcm2835_thermal.c. I want to hook up
rockchip_thermal.c exactly the same way.

Apparently, other architectures hook up the cpu temperature sensors to hwmon
elsewhere. Most seem to do this in hwmon/, e.g. hwmon/coretemp.c. These drivers
are written from scratch. Utilizing thermal_hwmon.[ch] for chips which have
already drivers in drivers/thermal/ seems to be more elegant.

 Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
