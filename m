Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802CA1390AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 13:04:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sSUfXcuBwR92iQUIcXt0FKw223zTd8Yvp3h4IZL1cTc=; b=Hqu4UtM8PSS8oCrRL7Ckvayhp
	0O5jzdIyXEVSAJlLyVljjrX8TDtek7h0ffIbjACmonElc1kJyhb238M4v/ld9mUdqmG7LdVHkKs7Y
	6fgqUBrEDo6PE9uw1BwNgkuDAMBXeWN7eKx3VuGtfkvhCbZg/mhqGDbBZ/1dBhAH3LpAVlgPIBiPi
	8MT8QPi55LHrIdYECLfYpZnCr9YmDMSic0fR58CvjJc/0SUuO59UX979gLfB0pdjtqqE8FTDCnOzf
	FTLVKzNPyK44y/LDLvhYsLnJQEkSJ+jaoSF1zsthmpGAWDyKESAqcSgJU0zD9IDkcDT7gZkMpB5SH
	3VQbK7ukw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqyST-00011i-FT; Mon, 13 Jan 2020 12:04:37 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqySH-00010G-Kh
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 12:04:27 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47xC1R5FbGz9txxD;
 Mon, 13 Jan 2020 13:04:11 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=RYPWm/IX; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id Hval_bWc400h; Mon, 13 Jan 2020 13:04:11 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47xC1R4CpHz9txxC;
 Mon, 13 Jan 2020 13:04:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1578917051; bh=MvSTc3YCiZWGwG0qnYB8ibq5lqkALByXbfzJloZm6VI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=RYPWm/IXQ/KxMHRniZs4sJA0UPIhBFyVBryEW3BKqF+e4rY1+/0Wr9KTb1Oy2Acmm
 QrU95xCviWgxho42vEOCHJ/Ec2LbEtDqIZJ4fGcLpTEgDDzqFJ3q5Tte95EDnP9ZWN
 /49rH0RisWsJHOGyX6JNukoKDcuHt44/tBSegBbY=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 82B088B7B7;
 Mon, 13 Jan 2020 13:04:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 5C6xgoSYmG2P; Mon, 13 Jan 2020 13:04:16 +0100 (CET)
Received: from [172.25.230.100] (po15451.idsi0.si.c-s.fr [172.25.230.100])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 47C788B79F;
 Mon, 13 Jan 2020 13:04:16 +0100 (CET)
Subject: Re: [PATCH] lib: vdso: mark __cvdso_clock_getres() as static
To: Thomas Gleixner <tglx@linutronix.de>, arnd@arndb.de,
 vincenzo.frascino@arm.com, luto@kernel.org
References: <e7becc50bee355e3872b84d91cc68ae8d7776bb9.1578764712.git.christophe.leroy@c-s.fr>
 <875zhhsr0h.fsf@nanos.tec.linutronix.de>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <658045cd-3f97-946d-6920-bea772e9be24@c-s.fr>
Date: Mon, 13 Jan 2020 13:04:14 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <875zhhsr0h.fsf@nanos.tec.linutronix.de>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_040425_832493_43ACEB36 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: x86@kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxMS8wMS8yMDIwIMOgIDIwOjU5LCBUaG9tYXMgR2xlaXhuZXIgYSDDqWNyaXTCoDoKPiBD
aHJpc3RvcGhlIExlcm95IDxjaHJpc3RvcGhlLmxlcm95QGMtcy5mcj4gd3JpdGVzOgo+PiBXaGVu
IF9fY3Zkc29fY2xvY2tfZ2V0cmVzKCkgYmVjYW1lIF9fY3Zkc29fY2xvY2tfZ2V0cmVzX2NvbW1v
bigpCj4+IGFuZCBhIG5ldyBfX2N2ZHNvX2Nsb2NrX2dldHJlcygpIHdhcyBhZGRlZCwgc3RhdGlj
IHF1YWxpZmllciB3YXMKPj4gZm9yZ290dGVuLgo+Pgo+PiBGaXhlczogNTAyYTU5MGExNzBiICgi
bGliL3Zkc286IE1vdmUgZmFsbGJhY2sgaW52b2NhdGlvbiB0byB0aGUgY2FsbGVycyIpCj4+IFNp
Z25lZC1vZmYtYnk6IENocmlzdG9waGUgTGVyb3kgPGNocmlzdG9waGUubGVyb3lAYy1zLmZyPgo+
IAo+IEkndmUgYWxyZWFkeSBxdWV1ZWQ6Cj4gCj4gICAgICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvci8yMDE5MTEyODExMTcxOS44MjgyLTEtdmluY2Vuem8uZnJhc2Npbm9AYXJtLmNvbQo+IAo+
IGJ1dCB0aGFua3MgZm9yIGNhcmluZyEKPiAKCgpJcyB0aGVyZSBhIGdpdCB0cmVlIHdpdGggdGhl
IGxhdGVzdCBWRFNPIHN0YXR1cyA/CgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC90aXAvdGlwLmdpdD9oPXRpbWVycyUyRnZkc28gCmlzIDYgbW9udGhlcyBv
bGQuCgpDaHJpc3RvcGhlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
