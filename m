Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBDF99920
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 18:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gn/6pqtgToT29WkivYOc2qNt1Lh1Uss+BJuykxCdYgA=; b=BvsekPVy7+Kmdj
	VzMVuMzljVa5y5eWocALa3Bz5Q5C1N16niU4SPaRB3ALkzavMY/43zHfam09U4Ptra4OCSTvqf7UD
	Fbw/99hlz/51qe01YyGbsnuk9nK+bFiDX2nG+3K++StaS1PFvvKrxt76cqbExjVTwn4L/pgPGhA+6
	3YGeBiEPBbeQcktzKW41YZwzqGG2j/9pNJUU/fjOelZcHPB8T+Hlx+p9sBXI0VCOs1Ce2zzlXETZz
	nznODjN2LAQTHbj1gOvWlJPP2YWq9Kyr92iuiGc04BZyrmbqggm3w7D4LIgz92RxsqGbboBha6g4v
	wYqydY1JUnl/g+nA0Mrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0pvp-0001dy-Pb; Thu, 22 Aug 2019 16:27:26 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0pvf-0001dX-7k
 for linux-arm-kernel@bombadil.infradead.org; Thu, 22 Aug 2019 16:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Date:
 Content-Type:Subject:Cc:To:From:Message-ID:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EFlLendt8CWQXL+vG3NFYTimiM+PuQRe0tn54GrTJvI=; b=oBZ6jP9fBmUJo8jsHyytYmftv
 RGfiHFegAWCpxMkWZNWzHWmB6joqNT3VK7Dyziws6eLS6LQy598eKPv5pWNwrM6RlUnIhlVPBKfm2
 UHY5FMPdSUh976HBidPq6kgZW0J4q/zXyvplIHlpczCuocFEOKUsdGrqHcqGQM+opXL/oYxVNKPfC
 472CPKoJI1Q5W9xSahaslhRSrPCNy+G+kyscWTnUmWQ0XBp5gG1RirCMU4rwR8hT8vrSjo1dCEqSg
 h7FpAFC0tHtxpi6pYhjXwTSSzO6LX0ftDge3t/fj+cO3SiIfrkG55X/BscAK5Q+2XSNFLQ3KOBptd
 3mZhAmgFA==;
Received: from mout.gmx.net ([212.227.17.22])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0pvc-0005tX-Ei
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 16:27:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566491191;
 bh=EFlLendt8CWQXL+vG3NFYTimiM+PuQRe0tn54GrTJvI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=J1oj+y+FOWEcxd/2mh0ST+byTtNPBFHL7bTKRkcLdRVhO4qIBRhkO711lC3ZS0f8l
 tP/t/UOMLwhRNCwvneZ2G3U6hBel+vnnplJFKcx8aEdZmwtlwzIBVpMf4qjx0A7jvO
 nzT6ewyRND+nEsfYOPLPwhhdT7aDBUU/5XNsvkcY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.89] ([217.61.154.89]) by web-mail.gmx.net
 (3c-app-gmx-bap07.server.lan [172.19.172.77]) (via HTTP); Thu, 22 Aug 2019
 18:26:31 +0200
MIME-Version: 1.0
Message-ID: <trinity-34b058f1-59d5-44b0-8783-a2c2440daf91-1566491191041@3c-app-gmx-bap07>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Frank Wunderlich" <frank-w@public-files.de>
Subject: Aw: [PATCH net-next v2 0/3] net: dsa: mt7530: Convert to PHYLINK
 and add support for port 5
Date: Thu, 22 Aug 2019 18:26:31 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <trinity-b1f48e51-af73-466d-9ecf-d560a7d7c1ee-1566488653737@3c-app-gmx-bap07>
References: <20190821144547.15113-1-opensource@vdorst.com>
 <trinity-b1f48e51-af73-466d-9ecf-d560a7d7c1ee-1566488653737@3c-app-gmx-bap07>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Kj7CZobsPnsr7zMq8BK+GQacgt27Jspm9jpx7yWGWaplZdZd8aja9akdwt++VHup9BcS0
 IVp0fhJXRc3pZQS4I0+mu06yvbd8TsfKwAREa02+QVekEJ9ZwW3K+gtAQC8lX7eO8ECuCls76G46
 72xV4qHPnIgvR9hBqOZoe8uPVuAiERZUUlmSIozv8fYLE+Aqq90YDQjFBGPhS6htpYNcKSQ11Jl1
 648imqiT/DAtQW6R+4saQlf8rnlqp5ePVxVuBhFol+gkPP4CWDhTRaRJI5t1tTv2hXEeqV4TL3aT
 s8=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:t+0B4WWivmI=:H2oz4bEmfWxC94hqA5jzqm
 KkusajgSnBgs/U3CkieChIr/hk41B8/m7wcoQfMR+PwI3GKgXuvhFfVTUsc1yCgTqslVUUD29
 VCSEuIaFgfW4rmaoET0PimCX+/6DvAVYQpOqqF3MJ9qZAxs1vh0sQxQ6hGNWnA3RgR37DPz+5
 EasdTGiXpaOXejgPQCwtUfC1xAqRhlm1yRDmzAbPDG89ePmQ23raCpn0X3yw8WtBpZJiWTqVD
 DpWY36Ii4Ep7KJD4KmuOKAFRccfZG5/deBsQe0Y5fGzz3U1DiOCttZpL1UQBkcDNTgz+vZ7p5
 zjmfhXeb2uICSFDTOWOmm0LwT8oezRBjfGRifBPENq02qfAOHCmZta3E2Rh5wts7ohCr6ybbI
 LBTZIUsEckzDBdOPG3cW8ypxAsJd0PLSJlOud2igzVImOD75iZA5ypn6zp3JdRu+3WGYpDBxk
 w2UxlslnJKHuPVHMY06YII3Bs/0/D+7m4aFEESes6kHB4NVJY6OYxQm9vL1MvXOjbPVtjlK0X
 tj/mKnR+ncWOcoTJNYyXhzAvYoPt2rhaKKpSXWxucCV7/XVjjhgEygWiOIGq7jV1gY7GDT8VI
 OWnmEKD3hnMJ20F49WuPuqpH4dyN25U+wLFMLHgWpeNefs7Rbta6TqoiINQOeekH/n3j++tiq
 humnnsNH/695SjU8Vww/AlCF0ru7gDq90sQDJ/hCy9AwEng==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-mips@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tested now also on bpi-r64 (mt7622) v0.1 (rtl8367 switch), without linux-next to avoid power-regulator-problems like on bpi-r2

dmesg without warnings/errors caused by this patches
link came up as desired
iperf3 looks good: 943 Mbits/sec in both directions and no other issues

so it is currently only the rx-throughput-problem on mt7623/bpi-r2

regards Frank

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
