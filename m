Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB631B387C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 09:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dSOZ2SmAG5Iv9vIyEucNJ6cyyYl6jr7bns0G6tPvTsc=; b=kRyMtaZvgNJ3NZ
	mZdn+bIBVU/CvFIqSTsrcMXJElVSeBUslPYJMPBCEfuM8gFJeVJdtEUSJpPN2PgaUanmg+uO17ZuY
	S/i9VcjsLkGRGP8J0ERLEvApdD+hzXQZ0Mont7v9N4SQFyfsNqei/GwIXK0A/V/14dYuya3W0wFxh
	k3XFHdFeNizbxwFgq0V69S2a6GYoZ/7W5z76IRJzQwTEil5aHX/rhegHZvpWK2I2EUZJd/nix37vr
	q7l3AsU7pD9t1ll6Lazy1NcUkVQIr5oLufO68fDHaG4juYQBHjHRJcEO2NB8PB7WZNhG3h6g8WaWw
	2+DHw/pvC9RO9N+ZBGAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9WZ-00036A-1g; Wed, 22 Apr 2020 07:10:23 +0000
Received: from smtp.first-world.info ([2803:1920::3:7b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9WJ-0001oQ-Ai
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 07:10:09 +0000
Received: from [192.168.158.10] (unknown [172.20.0.1])
 by smtp.first-world.info (Postfix) with ESMTPA id C9C34973F14
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 08:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=first-world.info;
 s=mail; t=1587537386;
 bh=wWldlHwgAfYcJHWhbOlBhnx8bec14hiAriMeq5W+vXk=;
 h=To:From:Subject:Date;
 b=u31iJVmd/JKBG4MdcodD92hyktiQQOTByz84u35wkHoNyi0hMSFnbOolOaiu9103z
 qETvDDcBYJm9gyLxLAuYnCw5esVUmgtHi5YKts7MEogLDmnc65vLCrhWyqX0WllBTD
 PWdHyaIMpPde7Tu8oq6GMvxN5Cv5164HXRCpaG24=
To: linux-arm-kernel@lists.infradead.org
From: alpha_one_x86 <alpha_one_x86@first-world.info>
Subject: 2 bug repport
Message-ID: <408ebea1-725d-2f8e-7d26-a2cb4d7754d3@first-world.info>
Date: Wed, 22 Apr 2020 03:03:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_001007_824254_D208AF7F 
X-CRM114-Status: UNSURE (   5.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I post here patch for odroid C2, the kernel 5.6.6 is broken here on 
odroid C2.

On mcbin platform I have uSD problem, repported but no reply on linux 
kernel bugzilla, https://bugzilla.kernel.org/show_bug.cgi?id=207083

Any idea what patch try?

Cheers,

-- 
alpha_one_x86/BRULE Herman <alpha_one_x86@first-world.info>
Main developer of Supercopier/Ultracopier/CatchChallenger, Esourcing and server management
IT, OS, technologies, research & development, security and business department


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
