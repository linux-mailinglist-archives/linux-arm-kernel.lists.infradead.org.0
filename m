Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62BDE9BD9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 13:52:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Di/WqOFU3xbilDzsbfUXVNNg1TCTY5c5HiihSBjDdoQ=; b=eG0zJJjp33fDpM
	VCABAX1prf2EXIWAG2Ht6wv7vCCT6OOSmcnCaimvTpE0kJZT18dRmlxq8KfPjVmEoiZ2+qHJxpWTo
	3XU5mqF5yynqGqE08s0US6bqYktS3DdsMHey70qH7QybMwCpgmaceDYZ+O9jf99cTQawv2jYA0Gbh
	bagaxDhe58Zej+d6hpp7DkBk7fC5IvrjMEz25DaLp1RK7/YAdLCez/RuZVs/owaFc10xmbrsw/4XG
	mGvdTt1SxuSBk23o3Oa/yYs4w15/zrNbKgTDXrSWMimtyCl1EA6Cctwkueop0tjBU2rsti85W8EYx
	rHXDVZTBUkDpAD/fpyjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPnT3-0002Qy-GE; Wed, 30 Oct 2019 12:52:53 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPnSo-0002QR-P8
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 12:52:40 +0000
Received: by mail-lj1-x244.google.com with SMTP id t5so2569044ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 05:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5erIfBzA/jd7EXBaSVGi4HXOCmx41ZkwEb2QQHCHgvk=;
 b=UeZxmXcP45HajlZCYTH/fPyfVK7l1VzXklUgS+JvhBfli6XupBaZ6oybuR4B0/An4o
 YkfSu1jEro5BttaiBUCjD3BKKyuvn3uZaxqZvJrbOX821We5YHsTMZVt1W/Tg2CnC0N3
 Ilvs/BDd2vCMKXhzz00VdbdI1YVn0PGO0dv04=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5erIfBzA/jd7EXBaSVGi4HXOCmx41ZkwEb2QQHCHgvk=;
 b=hkbKYHKutw6W7AV1wan+qVVOag6PhfY54Gd1/qk8lKXv5Nsx4KrA1W4D951OHHDyXn
 YB68tt5vExCAtRzDu6CAtjQO/hTYpqWRjIIy6JIBWeI6vBDStkXldhyP/1T5ZUovsoRD
 J+jDKD9xuOti5y5sAyh+LznQqZCwLed1kNnMQPz1MX0zt0fxi56RDD2cdYQ5TjUepZGJ
 TmjLTaSh49KUd0AnUuBkvWqFF3jFrCaMKa1L7io7Zp/k4F1ScgZo1BZqcIJdsaZHFVNC
 +laehl473dMAXcRe9vScBHMtMSIwENc9VF65ORGnIQqCn9F75yCiJhLWG4VAj2ZF9Z+3
 XPkg==
X-Gm-Message-State: APjAAAVMfviY3jIDERN+mrg3r85O38mRjTQ4wTdv2xy8TYMBeNSifZYN
 ZRlvuZ9ljma3lsf8Jz0wcYstgQ==
X-Google-Smtp-Source: APXvYqwUzQtilkzjwaBLHyLTKEW/yG9aPJtXBPBUOwPOr4CS6DkX1KalmlTNN88bUG4+HgjaXpR6Eg==
X-Received: by 2002:a05:651c:28a:: with SMTP id
 b10mr475136ljo.124.1572439956073; 
 Wed, 30 Oct 2019 05:52:36 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d9sm1426980lfj.81.2019.10.30.05.52.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Oct 2019 05:52:34 -0700 (PDT)
Subject: Re: [PATCH v2 17/23] soc: fsl: qe: make qe_ic_cascade_* static
To: Christophe Leroy <christophe.leroy@c-s.fr>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-18-linux@rasmusvillemoes.dk>
 <1d12e0d1-a873-d841-6e73-22ec1d09c268@c-s.fr>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <bb00fda2-7d20-b1a1-e2e8-22702842548e@rasmusvillemoes.dk>
Date: Wed, 30 Oct 2019 13:52:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1d12e0d1-a873-d841-6e73-22ec1d09c268@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_055238_985766_4CB1AEBF 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
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
Cc: Scott Wood <oss@buserror.net>,
 Valentin Longchamp <valentin.longchamp@keymile.com>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAvMTAvMjAxOSAxMS41MCwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPiAKPiAKPiBMZSAy
NS8xMC8yMDE5IMOgIDE0OjQwLCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4+IE5vdyB0
aGF0IHRoZSByZWZlcmVuY2VzIGZyb20gYXJjaC9wb3dlcnBjLyBhcmUgZ29uZSwgdGhlc2UgYXJl
IG9ubHkKPj4gcmVmZXJlbmNlZCBmcm9tIGluc2lkZSBxZV9pYy5jLCBzbyBtYWtlIHRoZW0gc3Rh
dGljLgo+IAo+IFdoeSBkbyB0aGF0IGluIHR3byBzdGVwcyA/Cj4gSSB0aGluayBwYXRjaCA5IGNv
dWxkIHJlbWFpbiB1bnRpbCBoZXJlLCBhbmQgdGhlbiB5b3UgY291bGQgc3F1YXNoIHBhdGNoCj4g
OSBhbmQgcGF0Y2ggMTcgdG9nZXRoZXIgaGVyZS4KCkFncmVlZCwgSSBzaG91bGQgcmVhcnJhbmdl
IHN0dWZmIHRvIGF2b2lkIHRvdWNoaW5nIHRoZSBzYW1lIGxpbmVzIGFnYWluCmFuZCBhZ2Fpbi4K
ClRoYW5rcywKUmFzbXVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
