Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1A3232D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yaR4NmmY1r8aTSkPSGiLT/Raov8ZK4LVaDN0HjNTBpI=; b=CjxEA8gjNU6tuv
	kPGMGnnFxgaGbkeupVtDyWYYnNc5/fOAtweQA8CthzkUoMv9hiFd9J0JQ9RloJreV1QNKcwhZWFTB
	HLZ9n6i+WygSAyUspOegPrc6IpKCcIylWI8Kpb3gGOstZN3ZgBEKvXwNXHi5W589PF2OV54GW35zG
	Fa5BJnHFOX6teNwLJEDj3S7Hep/fgSSvUzvdG5NOa0Xv7IUxK1nZ8lmtqJuSHZjqJaaV2p9Pyff0K
	2IMZLsazeqcEeYfEo2x8OydWJS7oVE4f+yf4mpM+TXHBUkTo+n7wsIKbdbqy0FvdWD4BWyJM2KAOC
	uOyn/VFKMJqi6LKiZ7qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgge-0006iF-Jy; Mon, 20 May 2019 11:42:36 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSggW-0006hZ-Pg; Mon, 20 May 2019 11:42:30 +0000
Received: from [192.168.178.167] ([109.104.33.162]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MbC5g-1gvYmx0jaS-00bXPs; Mon, 20 May 2019 13:42:11 +0200
Subject: Re: [RFC v2 1/5] clk: bcm2835: set CLK_GET_RATE_NOCACHE on CPU clocks
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520104708.11980-2-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <7d9cfcb9-1585-bba5-62ab-bddc0b57615a@i2se.com>
Date: Mon, 20 May 2019 13:42:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520104708.11980-2-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:+Lmwa+SIqFPVVnun6thuV1j2JcxQcER6nNgcoUgpmmiScCLPyhN
 ysfqKERDrLC62ytnS5aHhg/wF1Q13gNwfpkxcDnpmzIQ8W+tpru5b6UfI6b/EIjyD/Zvper
 D/+7gkRjBiPgdown9eFrYDhkCbF1LbhSpWK07Gv2EJaPu2S4DGEpQ4LHOSjRCx4vvWR348U
 3D50Wf8sFfkfbyjse6vTQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fzLvTIN16dM=:UdndameqEvX/cJj80HKwWz
 AIUovWKMCuXKm1+/35kvJ+CepmfzWCxLy1wiHyj8YZN3Tz1X2OnesnnzeTdsl//yIvOPYOXsJ
 RzzfSk/Kg09g4gPo35E4/EUtZ89A3vY6n1U66hNvAk5PzCrqcSRuKk5prmJCST5kuEN+9qfKF
 sKtD0jNf3xTJxZNrIPtO4ZzDd/mAELnLhefuDU2XnLioDMCXIxVlDTPx0ObEajNlc1JuXzjgA
 0cVpfpHev9ZIfFKJz3ZyQIBceHBJnkXCiVZqGIlXV1MBSUOCqjldoYfA1GzOAuGumL/DHNNI9
 Ktun9lFkP3KOyTATUygiKvcrQfy8ZXAdjc/yizweUiCGrQUUvtMLwLb+sB/pu7vn1llrWlOtw
 j7kK1Gqve0vyX/qc4PVdp6jY6rDZB61K4J86zEVheF7l73RM+h7nbW2udf4kicChuCjZvJAkI
 PRcls4jT80A6kSzdzYQwS/QooJqrui9valGIgMQ9BtzPSuJnkEuunihTNjgmZMpCTPsOlmkrH
 wpBcVYy7u3FqxHm4C9NWkUGU/JuJl+G+erIljdn4YT8J0NZnARAXZciVizP9mfLd9qToA02Eu
 K01zXei+CRAiIzwk0aVdQfPcay9EQpAt6FAra8Ukf3ZjfgvOpY0GXJKM/wYfQJqBc8YwY5nt1
 99Fy9QlvYg3Q+wnmA1B12uS64KahnU5QC9nn6ce3vBSJevMXITT8ZZJGOAyBbsW3ilIoHqCYw
 Oi1hIa36Ksg9rQRjIYO9ZsDOLPQBZuFv5DdbOQLqx1iK3MmeFUtYqWUZ8Cw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_044229_135155_82D86169 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pm@vger.kernel.org, sboyd@kernel.org, viresh.kumar@linaro.org,
 mturquette@baylibre.com, ptesarik@suse.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, mbrugger@suse.de,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20.05.19 12:47, Nicolas Saenz Julienne wrote:
> Raspberry Pi's firmware is responsible for updating the cpu clocks and
> pll. This makes sure we get the right rates anytime.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Acked-by: Stefan Wahren <stefan.wahren@i2se.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
