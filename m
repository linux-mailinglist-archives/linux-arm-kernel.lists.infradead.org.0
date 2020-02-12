Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D28415AB25
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 15:42:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zj10isNzII7gbpqxFxyuQXV6RN9y+kv9W0wg1qDHrHk=; b=acvmTgUkGjRNum46q90+WyLly
	fsVL1jTCu8IEpY6L506xGmD/4nbe1WqWhh6ncpsUv/yzN2t5DDztHT0toqSkOL6AvU5rNXul7tPkP
	qNRulfmZlAC0E45uwCLoLfw6Ku1mGHt82D6+ArUkTWhRJbB31iAqMtHPSDnLQizpEc8iujGSo5RWG
	VLPm0or+spvKl9ah7gYiBP+iTAh+X89Jo/sJZO3Z44Z2ouopbp72wod41MfPmRjercF+gjfkMnr8b
	97XaPJM6LjlX4FgA1LH+d8v9b9NH/m1lnF/vVHggesJr+hOBrmpy37qaGN4FF/1SLVg+rmIgxYrVJ
	7Z3Fa+lUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1tDs-0006Zr-JN; Wed, 12 Feb 2020 14:42:40 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1tDk-0006Yt-AI
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 14:42:33 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48Hj5z3w9sz9txMT;
 Wed, 12 Feb 2020 15:42:15 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=IP/xBWIV; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 0Ney07egoNwa; Wed, 12 Feb 2020 15:42:15 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48Hj5z2j1Fz9txMJ;
 Wed, 12 Feb 2020 15:42:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1581518535; bh=bAr/TswE2VMMLEod6DbaygLv0bA44xApmo6eiBQt5Jk=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=IP/xBWIVg6C7582meI+344Quc+xiKXsWItN6OAWoIW8toFDgjZ1/WnTo8jE2wN11m
 7bXAxtyVtcj9urCyggEQk5hwZgA4Qy1JsuKqNH6cC/0iL7o+254hArKUUI2i2h5ErG
 mksQxhyyADuNDqTLMJbtTGdGL48y1XiICT34J3aY=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id CFC528B81A;
 Wed, 12 Feb 2020 15:42:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id huEqZ1_u6whj; Wed, 12 Feb 2020 15:42:16 +0100 (CET)
Received: from [172.25.230.102] (po15451.idsi0.si.c-s.fr [172.25.230.102])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id A92268B80D;
 Wed, 12 Feb 2020 15:42:16 +0100 (CET)
Subject: Re: [Regression 5.6-rc1][Bisected b6231ea2b3c6] Powerpc 8xx doesn't
 boot anymore
From: Christophe Leroy <christophe.leroy@c-s.fr>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Li Yang
 <leoyang.li@nxp.com>, Qiang Zhao <qiang.zhao@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <0d45fa64-51ee-0052-cb34-58c770c5b3ce@c-s.fr>
Message-ID: <1dee8082-e98e-c767-a8db-405a4fee7b2e@c-s.fr>
Date: Wed, 12 Feb 2020 15:42:16 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <0d45fa64-51ee-0052-cb34-58c770c5b3ce@c-s.fr>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_064232_497489_60A7DE5B 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Scott Wood <oss@buserror.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxMi8wMi8yMDIwIMOgIDE1OjI0LCBDaHJpc3RvcGhlIExlcm95IGEgw6ljcml0wqA6Cj4g
SGkgUmFzbXVzLAo+IAoKWy4uLl0KCj4gCj4gTkI6IE5leHQgdGltZSwgY2FuIHlvdSBwbGVhc2Ug
Y29weSBwb3dlcnBjIG1haWxpbmcgbGlzdCB3aGVuIGNoYW5naW5nIAo+IHN1Y2ggY29yZSBwYXJ0
cyBvZiBwb3dlcnBjIENQVXMgPwoKQXBvbG9naXNlIGZvciB0aGF0IGNvbW1lbnQsIGluIGZhY3Qg
SSB3YXMgcGFydCBvZiB0aGUgcmVjaXBpZW50cyBzbyBpdCAKZGlkbid0IGxhbmQgaW4gbXkgbGlu
dXhwcGMgbWFpbGJveC4KClNlZW1zIGxpa2UgSSBtaXNzZWQgdGhhdCBzZXJpZXMuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
