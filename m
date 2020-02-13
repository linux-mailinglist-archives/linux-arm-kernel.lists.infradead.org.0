Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3B315B982
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 07:17:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BxiwUO8/7iiRTdL3NSHkqNpr3EZEDMCMHv0ARjdtxOU=; b=hqlvTI8aObUjF7ihdgD6Priuy
	I+JSAkHoYuB9FW59ZEH/5j1x+O0eUpJZs+wemxmSu77XrvJnj/UeEajo3gz2UFfL/xBRNgguTuXHq
	lSHTduDT8xhcdnSU0iFNf2cgO3j0Liua4EbamhnGVFn9dMT1QfMNhHYgOmMMNGNd50+jjIY7QZm2a
	ftuIhLWPuUyYfP05tX+fkbwM/8vAgNzzSoh6zZUYwoqjnWQ7Ic6RE0awl/jQtgzk7b9TgRaZ1mg/D
	eTow6sNbmfNePn5I+nf/eb/bW+8D/rqhStCj2+HntZhsHDnaQ3LttP5bj/fBsEkol1kdoqrhXq68n
	K/fdy0OFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j27oH-00007k-Nq; Thu, 13 Feb 2020 06:17:13 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j27oA-00006O-U5
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 06:17:08 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48J5rY33mTz9txqP;
 Thu, 13 Feb 2020 07:17:01 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=ul2SKyzo; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id KvByieqdrI0U; Thu, 13 Feb 2020 07:17:01 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48J5rY20wZz9txqN;
 Thu, 13 Feb 2020 07:17:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1581574621; bh=t/2LmfZnIqpmtmv0ZE2LPqev+yZwDWjNkrZOcNsg5jA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ul2SKyzo22RtsN1ENKBOu2/8T6zDA40eJJI01PExJ/53pjfxhhPeMtFc+b0szVLKJ
 Qk6CtH21vNnbEZDD1RH5IOJXHTVMN0ct4YgTznrIb72dG2KtN1scQujj5YtnVHBksO
 HVgdYFujtQ2MuNBQ8lcSaxAZihgRw1IhDFUcHduE=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 1F69B8B793;
 Thu, 13 Feb 2020 07:17:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id TYSyMjnOf7yr; Thu, 13 Feb 2020 07:17:02 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 815C38B752;
 Thu, 13 Feb 2020 07:17:01 +0100 (CET)
Subject: Re: [Regression 5.6-rc1][Bisected b6231ea2b3c6] Powerpc 8xx doesn't
 boot anymore
To: Qiang Zhao <qiang.zhao@nxp.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Leo Li <leoyang.li@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <0d45fa64-51ee-0052-cb34-58c770c5b3ce@c-s.fr>
 <aee10440-c244-7c93-d3bb-fd29d8a83be4@c-s.fr>
 <VE1PR04MB6768B3B0F369280338370B87911A0@VE1PR04MB6768.eurprd04.prod.outlook.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <0c217693-7c73-1696-8a86-e81dbabefe02@c-s.fr>
Date: Thu, 13 Feb 2020 07:17:01 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB6768B3B0F369280338370B87911A0@VE1PR04MB6768.eurprd04.prod.outlook.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_221707_266121_DEE6C7DA 
X-CRM114-Status: GOOD (  11.16  )
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
 LKML <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxMy8wMi8yMDIwIMOgIDA0OjM1LCBRaWFuZyBaaGFvIGEgw6ljcml0wqA6Cj4gT24gMDIv
MTIvMjAyMCAyMjo1MCBQTSwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPj4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3BoZS5sZXJv
eUBjLXMuZnI+Cj4+IFNlbnQ6IDIwMjDlubQy5pyIMTLml6UgMjI6NTAKPj4gVG86IFJhc211cyBW
aWxsZW1vZXMgPGxpbnV4QHJhc211c3ZpbGxlbW9lcy5kaz47IExlbyBMaQo+PiA8bGVveWFuZy5s
aUBueHAuY29tPjsgUWlhbmcgWmhhbyA8cWlhbmcuemhhb0BueHAuY29tPjsgR3JlZwo+PiBLcm9h
aC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPj4gQ2M6IFNjb3R0IFdvb2Qg
PG9zc0BidXNlcnJvci5uZXQ+OyBsaW51eHBwYy1kZXZAbGlzdHMub3psYWJzLm9yZzsgTEtNTAo+
PiA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz47IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+PiBTdWJqZWN0OiBSZTogW1JlZ3Jlc3Npb24gNS42LXJjMV1bQmlzZWN0
ZWQgYjYyMzFlYTJiM2M2XSBQb3dlcnBjIDh4eCBkb2Vzbid0Cj4+IGJvb3QgYW55bW9yZQo+Pgo+
PiAtLS0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9jcG1fdWFydC9jcG1fdWFy
dF9jb3JlLmMKPj4gYi9kcml2ZXJzL3R0eS9zZXJpYWwvY3BtX3VhcnQvY3BtX3VhcnRfY29yZS5j
Cj4+IGluZGV4IDRjYWJkZWQ4MzkwYi4uMzQxZDY4MmVjNmViIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL3R0eS9zZXJpYWwvY3BtX3VhcnQvY3BtX3VhcnRfY29yZS5jCj4+ICsrKyBiL2RyaXZlcnMv
dHR5L3NlcmlhbC9jcG1fdWFydC9jcG1fdWFydF9jb3JlLmMKPj4gQEAgLTEzNTEsNiArMTM1MSw3
IEBAIHN0YXRpYyBpbnQgX19pbml0IGNwbV91YXJ0X2NvbnNvbGVfc2V0dXAoc3RydWN0Cj4+IGNv
bnNvbGUgKmNvLCBjaGFyICpvcHRpb25zKQo+PiAgICAJCWNscmJpdHMzMigmcGluZm8tPnNjY3At
PnNjY19nc21ybCwgU0NDX0dTTVJMX0VOUiB8Cj4+IFNDQ19HU01STF9FTlQpOwo+PiAgICAJfQo+
Pgo+PiArCWNwbV9tdXJhbV9pbml0KCk7Cj4+ICAgIAlyZXQgPSBjcG1fdWFydF9hbGxvY2J1Zihw
aW5mbywgMSk7Cj4+Cj4+ICAgIAlpZiAocmV0KQo+Pgo+IEhvdyBhYm91dCB0aGUgcGF0Y2ggbGlr
ZSBiZWxvdz8gSnVzdCBhIGRyYWZ0LgoKWWVzLCBJIHNlZSB0aGUgaWRlYS4gSSB0aGluayB3ZSBj
b3VsZCBnbyBmb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KQnV0IGluIHRoZSBwb3dlcnBjIDh4eCBj
YXNlLCB3ZSBhcmUgdGFsa2luZyBhYm91dCBjcG1faW5pdCgpLCBub3QgcWVfaW5pdCgpLgoKQW5k
IG1heWJlIHRoZSByZXR1cm4gY29kZSBzaG91bGQgYmUgY2hlY2tlZCwgYmVjYXVzZSBpZiBpdCdz
IG5vdCAwLCAKY3BtX211cmFtX2luaXQoKSB3b24ndCBoYXZlIGJlZW4gY2FsbGVkLgoKVGhhbmtz
LApDaHJpc3RvcGhlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
