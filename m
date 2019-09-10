Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A94AF0B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 19:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/dgC8m2qOzaDJnbg3RWFPKuiiJZSgmMorjGZqRngisU=; b=sGpSrIAYc4c2vb
	WbnyBHo4wKocZ3UcstJT2ZnJDjxeGZl5QStTjqH/5dfhbyveG4ygOTZp0nbkRLZnxe9yjJ2u8bV5e
	ppiW52245Pf48SAX72bGKGp2W4qq9vSqyYuxOxLhu7YypwGMwXC6OjKy0OS7VWEWJWaf7UtzwvaqN
	AnRHEXyDIRAvN5qcNsDGMeQk9ORwFTMAAM4I+C/qn+76TW1dei8Bd+7EgMABCREo9882DY1HJHsXs
	uxxI8/HCNGpASrNRhv1xBgAj8ovnzVIygesVuIiL++6eqsuK6e73KhF9GYye0f8k10hn/2FbDOvnx
	wU/ttL0YIDYki8vyGfCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7kHh-0008Bu-Vc; Tue, 10 Sep 2019 17:50:34 +0000
Received: from ms3.ystp.ac.ir ([78.39.159.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7kHX-0008Aa-5x
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 17:50:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by ms3.ystp.ac.ir (Postfix) with ESMTP id 626069CA7D0;
 Tue, 10 Sep 2019 17:41:36 +0430 (+0430)
Received: from ms3.ystp.ac.ir ([127.0.0.1])
 by localhost (ms3.ystp.ac.ir [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id vDh2XLvy_bp8; Tue, 10 Sep 2019 17:41:36 +0430 (+0430)
Received: from localhost (localhost [127.0.0.1])
 by ms3.ystp.ac.ir (Postfix) with ESMTP id D1F889CA7CF;
 Tue, 10 Sep 2019 17:41:35 +0430 (+0430)
DKIM-Filter: OpenDKIM Filter v2.10.3 ms3.ystp.ac.ir D1F889CA7CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ystp.ac.ir;
 s=52244776-9648-11E6-8E52-D9F3D0CA04A5; t=1568121095;
 bh=pJXfywXhiBshMOZwrwT6j4GPOZJFwPovP45q7L7XP4A=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=GyFTEJ4O+BqpFbC6Z8dFZSSuxRtyGwczTlda3NRS4NmarI10RZmTkQPSeyE8z6lh8
 wQvd1rmy8O1/iZ20VYqjgV3KhZ6pv2sZZlfHnbXX/7bMTWPGwU1P9sirpdmH08FtUo
 z3OQzRP5D4Myy0vRNoTAVgYcXR2NU3xHzj+dEROE=
X-Virus-Scanned: amavisd-new at ms3.ystp.ac.ir
Received: from ms3.ystp.ac.ir ([127.0.0.1])
 by localhost (ms3.ystp.ac.ir [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id MXnhCXpHEdcK; Tue, 10 Sep 2019 17:41:35 +0430 (+0430)
Received: from mail.ystp.ac.ir (unknown [194.53.178.134])
 by ms3.ystp.ac.ir (Postfix) with ESMTPSA id 579B49CA770;
 Tue, 10 Sep 2019 17:41:33 +0430 (+0430)
To: "rob herring" <rob.herring@calxeda.com>,
 "hsweeten" <hsweeten@visionengravers.com>, "buildroot" <buildroot@busybox.net>,
 "linux arm kernel" <linux-arm-kernel@lists.infradead.org>,
 "Paul Chavent" <paul.chavent@fnac.net>
From: nik_bin_nek_alwi <shookuhi@ystp.ac.ir>
Subject: =?UTF-8?Q?=F0=9F=93=AA_Huhu._wollte_mich_mal_?=
 =?UTF-8?Q?wieder_bei_dir_melden.?=
Message-ID: <eb403e56-8b81-4024-b620-a3fe1144202e@ystp.ac.ir>
Date: Tue, 10 Sep 2019 07:06:55 -0600
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_105023_952063_65179599 
X-CRM114-Status: UNSURE (   1.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: cal149.xyz]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: cal149.xyz]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: cal149.xyz]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 L_8BIT_MISMATCH        Header says 7bits but body disagrees
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

S2FubnN0IGR1IGRpciBkYXMgdm9yc3RlbGxlbj8gaHR0cDovL25nYmxxYXguQ2FsMTQ5Lnh5ei9p
bmRleAoKCgoKCgpfX18KR3J1w58KbmlrX2Jpbl9uZWtfYWx3aUB5YWhvby5jb20KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
