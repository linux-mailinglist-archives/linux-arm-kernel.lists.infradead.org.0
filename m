Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA420E9A7C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:56:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uy9Xdxcg0lec0Kn1mmUYr95HII/cjyKvC14UDq8jZf8=; b=nzqZK/KYygB9fjZTLWtaLNV0V
	qVpV3YrhZBjL8lAj/CAlQQH5mZfJ+5xy99UxwYy+dRoNplDuyg3vg2b+0TT8q8211JRDHQVrDOQZc
	HL5MvEI9DUQa3cG94gM67CBJkbxtzZwG/TbGDHS4NirPkKW3ZLfIvf8GOs79sMEjcTCZoNG9CMtTF
	zYJABDqP+98vJnCg8lmet4jBjrrfzLmbHFQYZjngu9rVdGg8eJx6zC71ppSdA15ZR1BPC8ZKd8S3U
	xTkEJtBLGN6nEaLOdX3Dk5XtImLGbdZKcWZVlwBXZPY3Ex5LYdzIzbgFN+hVxthhSxQnurHOaw3o5
	vInPZGKJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPleH-0006E7-Fz; Wed, 30 Oct 2019 10:56:21 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPle0-0006DP-4V
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:56:05 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47353P44N8z9vC12;
 Wed, 30 Oct 2019 11:56:01 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=X/66W8k7; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 8ksOLoirlNZc; Wed, 30 Oct 2019 11:56:01 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47353P2wNYz9vC0y;
 Wed, 30 Oct 2019 11:56:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1572432961; bh=NOsDc85kaLL3wmTkoC+345ALS2CMn66OoExIe3uJdWQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=X/66W8k7NYYmbQqEwciiXTc9kN6YBJT5WfxXA3jwGiVxzZITAZzVw3JrOwx/ZvSab
 Il0cjEFCH7JmM6k3AOs3hgFYQ1sibicqs2iz61u9SaECKgzqbeFgWCoEe3AZkpunN3
 8Fg21Pg53mFiBwyqVhuQg+JvQoCLD08AMrP/ciRA=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 7A8218B875;
 Wed, 30 Oct 2019 11:56:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id KnDVmLJswb7k; Wed, 30 Oct 2019 11:56:02 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 9F85C8B7C7;
 Wed, 30 Oct 2019 11:56:00 +0100 (CET)
Subject: Re: [PATCH v2 20/23] serial: make SERIAL_QE depend on PPC32
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-21-linux@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <869673da-da66-8cc6-68bc-2bbdfd44b1e6@c-s.fr>
Date: Wed, 30 Oct 2019 11:56:00 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191025124058.22580-21-linux@rasmusvillemoes.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_035604_340285_E0679610 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linux-serial@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyNS8xMC8yMDE5IMOgIDE0OjQwLCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
Q3VycmVudGx5IFNFUklBTF9RRSBkZXBlbmRzIG9uIFFVSUNDX0VOR0lORSwgd2hpY2ggaW4gdHVy
biBkZXBlbmRzIG9uCj4gUFBDMzIsIHNvIHRoaXMgZG9lc24ndCBhZGQgYW55IGV4dHJhIGRlcGVu
ZGVuY3kuIEhvd2V2ZXIsIHRoZSBRVUlDQwo+IEVuZ2luZSBJUCBibG9jayBhbHNvIGV4aXN0cyBv
biBzb21lIGFybSBib2FyZHMsIHNvIHRoaXMgc2VydmVzIGFzCj4gcHJlcGFyYXRpb24gZm9yIHJl
bW92aW5nIHRoZSBQUEMzMiBkZXBlbmRlbmN5IGZyb20gUVVJQ0NfRU5HSU5FIGFuZAo+IGJ1aWxk
IHRoZSBRRSBzdXBwb3J0IGluIGRyaXZlcnMvc29jL2ZzbC9xZSwgd2hpbGUgcHJldmVudGluZwo+
IGFsbG1vZGNvbmZpZy9yYW5kY29uZmlnIGZhaWx1cmVzIGR1ZSB0byBTRVJJQUxfUUUgbm90IGJl
aW5nIHN1cHBvcnRlZAo+IHlldC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSYXNtdXMgVmlsbGVtb2Vz
IDxsaW51eEByYXNtdXN2aWxsZW1vZXMuZGs+Cj4gLS0tCj4gICBkcml2ZXJzL3R0eS9zZXJpYWwv
S2NvbmZpZyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9LY29uZmlnIGIvZHJpdmVycy90dHkvc2VyaWFs
L0tjb25maWcKPiBpbmRleCA2N2E5ZWIzZjk0Y2UuLjc4MjQ2ZjUzNTgwOSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3R0eS9zZXJpYWwvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9L
Y29uZmlnCj4gQEAgLTEwNTYsNiArMTA1Niw3IEBAIGNvbmZpZyBTRVJJQUxfTEFOVElRCj4gICBj
b25maWcgU0VSSUFMX1FFCj4gICAJdHJpc3RhdGUgIkZyZWVzY2FsZSBRVUlDQyBFbmdpbmUgc2Vy
aWFsIHBvcnQgc3VwcG9ydCIKPiAgIAlkZXBlbmRzIG9uIFFVSUNDX0VOR0lORQo+ICsJZGVwZW5k
cyBvbiBQUEMzMgoKU2FtZSwgd291bGQgYmUgbW9yZSBvYnZpb3VzIGFzCglkZXBlbmRzIG9uIFFV
SUNDX0VOR0lORSAmJiBQUEMzMgoKQ2hyaXN0b3BoZQoKPiAgIAlzZWxlY3QgU0VSSUFMX0NPUkUK
PiAgIAlzZWxlY3QgRldfTE9BREVSCj4gICAJaGVscAo+IAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
