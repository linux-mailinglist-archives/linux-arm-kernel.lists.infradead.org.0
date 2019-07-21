Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B6E6F14D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 04:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5UIAp0WEqBjsPoqtXxH+OjJHaP9MumNWN16YwedqqcY=; b=pnAUI7svVcbN5fgb74idn/yJx
	T09K5lIcRsEk0Uy0kFUrnbj0m8F3fQpdYMLxZNQgZ3tO2X8qJPsyYqdaoOUH9ruHwP8RQNm15KYTQ
	PFX8pqklmezOYOXrc7cIPeXpfFfH+i82PHVMpxxmZBFA4iCOJvedrpbmfzKcgLqGnEOEOvz9IuFz+
	3Yl/3mYnotAhX8HUWZHA8DjqR3FmN2H8gSW71GlQiu98k/HblRYKJnXhMaFyXxfKlAVO+VhjhT61d
	fBm/EwK31N3INSQB/0O0PQMdJvhzaHb8qbhhUIt/QTg8OP4GbyyZ4ykYMRaiUHEGetgOlrz7dP0j8
	ojxC4ZMWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hp1pL-0003R4-Oq; Sun, 21 Jul 2019 02:43:56 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hp1p7-0003NX-F4
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 02:43:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QBCxrWgQQvbzcSHUE+6V5GYiHh8kl0xDb7n2C2WZI1U=; b=evrWp+eTbUOlJMWIwZri5RT/jU
 5WhW7H5EVxsOoU+e2v3rKQ7Km5/PUUkYGhesGGviICzbRx3A91I3Vzubr/CQlLVm0RXw2IRQz6wAE
 vgWLHpoJzvSy3hVcQEri0fNKnaoyLMzFurmu3Xs4LEhZ6guZv2tBxI/E/fLwHG8fUSnAFzOdfFXfU
 xpD5ZTWPoR5W/HBaDvCVr0hCFbB3KeJQDhgE3GtXRx9THOkDA2szgseW7aZgURr3RemxHOgCi9jsi
 lyA0Tx2lZ9fogw0qJ1pp5SoiDLm8thW7iUj8dxrQh+ozh5AKwYWwmIiN6X72qPEUrRMeMNrkqJoCL
 /uXUpnDw==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:51266 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1hp1oH-001YcK-CZ; Sat, 20 Jul 2019 22:42:49 -0400
Subject: Re: [PATCH 1/4] ARM: OMAP2+: Drop mmc platform data for am330x and
 am43xx
To: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org
References: <20190326181324.32140-1-tony@atomide.com>
 <20190326181324.32140-2-tony@atomide.com>
From: David Lechner <david@lechnology.com>
Message-ID: <0af63198-5a68-2f0d-f14e-2b514580d2d5@lechnology.com>
Date: Sat, 20 Jul 2019 21:42:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190326181324.32140-2-tony@atomide.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_194341_670319_EC0BA189 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/26/19 1:13 PM, Tony Lindgren wrote:
> We can now drop legacy platform data one interconnect target module at
> a time in favor of the device tree based data that has been added earlier.
> 
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---

This breaks wifi on BeagleBone Blue (found via git bisect). In dmesg, I see:

     platform 47810000.mmc: Cannot lookup hwmod 'mmc3'

How can we fix it?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
