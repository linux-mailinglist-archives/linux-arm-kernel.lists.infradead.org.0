Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4C177F33
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 13:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgy5LPTw7VCisekhYsXOXRsDvocSA3ik22f3Ybm3jTY=; b=EI93oLjd8/tIFe
	FKkk5RFYv/3JTxs4GhnxH5qEywu99P7aWMLnVomLweMAYdDx+QWaagyIzlBJWiqsfAbKamsNUj3Yd
	+w5O515FkfmzsZ8e/PILyKMbEqMkLb9MmpmuSvFRauT3Oyf4lS5VPoOgm1q3sx65LQW20uUVqfYWR
	oFp2YpYcCZii8eJ+aS+F4r6p7PWbBvKIcWpwUbXMRGab72t+Jb0ySIcuN36MwPhqSd0qMrZSjkoSc
	1pGwbok5b5O5ettP/x4+ejggd+XxwaU9E33HailvJQgxzJfPKgD5EYqX/d6vQsZFzA/iD7Axr4Iua
	7yWRpvpcsZ6+1VabKUOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrhGU-0005Os-Gk; Sun, 28 Jul 2019 11:22:58 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrhGF-0005OJ-Rd
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 11:22:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564312929;
 bh=MAKwYZfynDL+Hd7f+QsuXWozUnUZdJtS1wF4LCKU6/w=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=NF57iRnW6S3Y8qkeboGZMJfHkND4o2E3LhB2rZL19OmQN0un0NdVdt6XFZAfE5gQJ
 yiaNGg6Hm0LFsxvSh4BVX+QsPdmIbbf0jJTX7keOggRZfwGJpPMH4lf74oXPTsufaB
 UcGpC0HerB/nCQCk4d0u4wY1ti4pGo78IAl3xhns=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.143]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0M3RVA-1iiQOf0KYq-00qzXj; Sun, 28
 Jul 2019 13:22:09 +0200
Subject: Re: [PATCH 00/18] ARM: Add minimal Raspberry Pi 4 support
To: Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <319549e0-23b5-4a49-49ae-723da754f984@gmx.net>
Date: Sun, 28 Jul 2019 13:22:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:L6n7pJWpKJUX7rL/HEi1TSsdsIqn0DrG88SOjiUdOZ1luS7fB15
 EoyYD2aklGvLPglgIqf3Z6jPBuiYrtnHSui96ADfDxT/LU7NdG/rvDN0WY2ADPTxCWTZfZY
 NBTH/a+ulgmKzjX+3xyc5xb+M0uwVItVplnb2+M9d7NQkbB9N8RrifVZwxSoG4BpFaQVXxk
 sl4wuAoMe+MdhnhudyebQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9G1f+9ZXTAI=:+yOWt4En/1dyMWszJNZ+On
 S/CoTJeQWv+vA8W6u3vcji++A7yFjk74I8j49RwLM3I8CuHz7jf9DUi77SBwNzzV6RWyhRTNK
 SmGs0mtZidYaGA5ntfEqxe4GeGBnt/qY05YV9Mdvzd1FFrwFImSJppNpJRruJLY9iwHCMYhyv
 CHZXqrhiqw50L/gHq1UYRolXI70JIK4s1LRKSCuS5SJCFDfTtr7zo6/bQ3XCCQ2sc2VLIICMk
 BwETezD6yt4b8b41oiI65P5TeI5aJsEmK7OyHdYxeDsZ3ujp/gOx59WjRYcPiAn1UXeCnfjKC
 1wDruBCdKIjl5qQ3dn6M8vhdk8fwG8hP57enJWvKIkoC5p+fIcYKtV4Lsbs49NQAi4QLudJY5
 c7nRit8vuiZ6Dt7esiroqaUxrwIaKpMTmCoQvsrybfdZbOsj6gzfj0lPQw74IJqX9jmyJkG37
 TACcg8T0rGlzvkw2s6SAWmTkvBm/yKNraAhno4mAaXkaNbUGg68v3jifa1yj3BDReQM7x9P9v
 S2N/+WHBEh6NvmihgfaaHWWV1uPD5OHewPmkVMlLE1WXk9LDlAfuFbiBFPoFnT5zRe7lpfCGj
 CfdWGkwLn9l6qcSYkwTlpNCnQHwxtQ1ytZNvzpsgcKH1qvsJnTPL0XD84OIOQ8x49ItXSC9bv
 Zl7HpIR1Le2vNWrX7EBfXeqQk50pOZszcSxLWguZUDmJ2jhPRCmHybfOKPQX8jF9LML6r/GSw
 6O4toYqsMRbLXYjYP5F44jmUXFs6OLyw/gUmX1ZlYdjszV+hmgJbeF4j5bZtT9BISXqsy6g4O
 nL+zuC6Bebx8IzpoIJ3LfWAckjsRu0r64UvUUVtxNQE/mNajWsBSuJJx6IOAe0TM6BesS/Z/w
 AnCTD9iONKH6Jx9rtecuzOrRu5nGTRGrJI3ZwLmSD3a5AkTROOqppnfId5YQswCnnJRilFCGd
 o9T3tvSnUCD1cVsEYefQlSrFlzYI9rcM6LCMlqBE5h5xOdAcP8HafYs6N+IEtM+aALir4YBj9
 OT02iCnmc/eRZ/rcz81KQYhP8uH3GjfXUTmdDCa4bRLUO/ATZJF7x2ciXv/hfLKKuHJUTvLEa
 Y2WCb5EcC14TEQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_042244_182749_6052D316 
X-CRM114-Status: GOOD (  12.86  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Matthias Brugger <mbrugger@suse.com>, Scott Branden <sbranden@broadcom.com>,
 linux-gpio@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,
hi Michael,
hi Stephen,

Am 22.07.19 um 07:54 schrieb Stefan Wahren:
> This series adds minimal support for the new Raspberry Pi 4, so we are abl=
> e
> to login via debug UART.
>
> Patch 1-5:   Prepare platform and DTS for the new SoC BMC2711
> Patch 6-10:  Enable support for emmc2 on BCM2711
> Patch 11-12: Enable pinctrl for BCM2711
> Patch 13-17: Add Raspberry Pi 4 DTS support
> Patch 18:    Update MAINTAINERS
>
any comments on the clk / pinctrl parts or do you just wait for Rob's Ack?

Sorry to bother you, but i want to send a new version before my holidays.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
