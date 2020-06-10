Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282611F5771
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 17:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOItqNfIxtkLZhxcMwr00XLzjxjM8nl1gWDao2MrWp8=; b=rey/ZiZioplmM4
	lftbCzsZR15djgFaXx0qTPS31zbdnwAdrUGLnt3ENrOuuYcsRsB+Tz95bb4Q2ueQVssORKFCBbk+z
	lZU1CHQvAZOz5D6RsztJUxbgvR1FJ59GSH+rGutyVi+ViAkdzAlg+HvaMMAJAti2/kbOiYYJIogvs
	E0GVAy5VAdDimNtI5z/clOP1/3yB6DZpOf413UHEYFksZXuxGUZ/Sw5gfy68V5YaEfjQD/oOZ0uid
	gO/9HCchK62ly8IU9Iq7aPVYbJYxRmGThQttcpeHWDWhWfcYKoxfcHhk+8M07dD8k5z9qx1G2ZqSw
	AOvQop5IlnLU5pXaoKUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj2Qq-0001IL-6c; Wed, 10 Jun 2020 15:14:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj2Qi-0001HV-Ix
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 15:14:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id c3so2678812wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 08:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=u6ZBh3xhLtnUwFe/9xqitT47OizAqnS3qUaRaKdrxcw=;
 b=ipyMb0wxF/MyREsILFzJtU8gHR5aUzsw0s0daHQqbH7uM6WRpP4JA8biPGvx8slP/V
 I0ugUP+QkSviFaGewLZ7pkZDezLRPWJhkHHM9Tk5c+n71n0DtHxjMvPScHnKH0k6O5mH
 KmQQT2TZpS4YDkm6EmYgdbeqjUsWK6Uzi00K4yIAovFk+l+h+7mo9fi46jcudyPX8LZO
 Y9ITq0aKrxNUYNWfa2g1FCNXrmgLA/ea+u8h4C3gvRf6tf2Pb7eAh5Erqfrk7924IGfl
 u/RIs41wmg7mUAcuVwwAHIUU1/11Cn8/DacYgHMyVhCCQ3BBvlNqPtVbx646WTFjYOrB
 w7SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=u6ZBh3xhLtnUwFe/9xqitT47OizAqnS3qUaRaKdrxcw=;
 b=dHwEYlOr2bhw1SyeLgdFgJrAG1b7lDawVtrijuK3UVOGmfRvqrIwdX9ItB9LR93NaA
 874X90l/yg0QaEkul/i+Q93JoucnpmdI0+47sqNZ98QbgvdpIHmvojzaaOCkzI+pcNQs
 9xXdulV0CURZydIwrWSfhYxfPr/KfUPndgzahiiQk4m4KT9r1X/XdqCr0FcRkdZA63jy
 T1TtpWEFNng4eg632MNzrjjLsdBEe+U68xf5FEVTJrPUa8c/cHxMl2ewlv3T5+mp+0yX
 Z0Ca92o4Kzi7xplvBz0EtQSttBhupvq2H65kx7E6WLkaUqGv/jifGTkbJgZHif2esjfe
 pcrQ==
X-Gm-Message-State: AOAM5336tSz7FxNi5kppLJYsKLvmhxTwH7lmge9Gx5JDmv1g/DS0ozKN
 bb0axUidZu7f1lSlsERk2iQ=
X-Google-Smtp-Source: ABdhPJw8Odfle0VCYRg7uO5cn7CQ/GpvarHxi2OiUUCx4yB1jEgciHij0GrTptZw8PPkEqtzM34CxQ==
X-Received: by 2002:adf:ecc2:: with SMTP id s2mr4721645wro.60.1591802054688;
 Wed, 10 Jun 2020 08:14:14 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 v19sm26227wml.26.2020.06.10.08.14.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 08:14:13 -0700 (PDT)
Subject: Re: [PATCH 2/2] clk: bcm63xx-gate: add BCM6318 support
To: =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <f4bug@amsat.org>,
 =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>
References: <20200609113049.4035426-1-noltari@gmail.com>
 <20200609113049.4035426-3-noltari@gmail.com>
 <1367fcf3-24ed-9106-a329-da5f8e168e17@gmail.com>
 <3E897527-55EB-47DB-99ED-C737725F0F9E@gmail.com>
 <CAAdtpL7dUZ2RqkrqSxiZxDbp4qY-KdtSc7CyuR+rbnRRA2Yvrw@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <93c429b1-31f4-95c2-1bd9-b3756b396f3a@gmail.com>
Date: Wed, 10 Jun 2020 08:14:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAAdtpL7dUZ2RqkrqSxiZxDbp4qY-KdtSc7CyuR+rbnRRA2Yvrw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_081416_647048_642A64C7 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, kbuild test robot <lkp@intel.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzEwLzIwMjAgMToyOSBBTSwgUGhpbGlwcGUgTWF0aGlldS1EYXVkw6kgd3JvdGU6Cj4g
SGksCj4gCj4gT24gV2VkLCBKdW4gMTAsIDIwMjAgYXQgODoxMyBBTSDDgWx2YXJvIEZlcm7DoW5k
ZXogUm9qYXMKPiA8bm9sdGFyaUBnbWFpbC5jb20+IHdyb3RlOgo+Pgo+PiBIaSBGbG9yaWFuLAo+
Pgo+Pj4gRWwgMTAganVuIDIwMjAsIGEgbGFzIDQ6MjcsIEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFp
bmVsbGlAZ21haWwuY29tPiBlc2NyaWJpw7M6Cj4+Pgo+Pj4KPj4+Cj4+PiBPbiA2LzkvMjAyMCA0
OjMwIEFNLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4+Pj4gK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgY2xrX2JjbTYzeHhfdGFibGVfZW50cnkgYmNtNjMxOF9jbG9ja3NbXSA9IHsKPj4+
PiArICAgIHsgLm5hbWUgPSAiYWRzbF9hc2IiLCAuYml0ID0gMCwgfSwKPj4+PiArICAgIHsgLm5h
bWUgPSAidXNiX2FzYiIsIC5iaXQgPSAxLCB9LAo+Pj4+ICsgICAgeyAubmFtZSA9ICJtaXBzX2Fz
YiIsIC5iaXQgPSAyLCB9LAo+Pj4+ICsgICAgeyAubmFtZSA9ICJwY2llX2FzYiIsIC5iaXQgPSAz
LCB9LAo+Pj4+ICsgICAgeyAubmFtZSA9ICJwaHltaXBzX2FzYiIsIC5iaXQgPSA0LCB9LAo+Pj4+
ICsgICAgeyAubmFtZSA9ICJyb2Jvc3dfYXNiIiwgLmJpdCA9IDUsIH0sCj4+Pj4gKyAgICB7IC5u
YW1lID0gInNhcl9hc2IiLCAuYml0ID0gNiwgfSwKPj4+PiArICAgIHsgLm5hbWUgPSAic2RyX2Fz
YiIsIC5iaXQgPSA3LCB9LAo+Pj4+ICsgICAgeyAubmFtZSA9ICJzd3JlZ19hc2IiLCAuYml0ID0g
OCwgfSwKPj4+PiArICAgIHsgLm5hbWUgPSAicGVyaXBoX2FzYiIsIC5iaXQgPSA5LCB9LAo+Pj4+
ICsgICAgeyAubmFtZSA9ICJjcHVidXMxNjAiLCAuYml0ID0gMTAsIH0sCj4+Pj4gKyAgICB7IC5u
YW1lID0gImFkc2wiLCAuYml0ID0gMTEsIH0sCj4+Pj4gKyAgICB7IC5uYW1lID0gInNhcjEyNCIs
IC5iaXQgPSAxMiwgfSwKPj4+Cj4+PiBOaXQ6IHRoaXMgc2hvdWxkIGJlIHNhcjEyNQo+Pgo+PiBO
aWNlIGNhdGNoLCBJIHdpbGwgZml4IHRoaXMgaW4gdjIuCj4+Cj4+Pgo+Pj4+ICsgICAgeyAubmFt
ZSA9ICJtaXBzIiwgLmJpdCA9IDEzLCAuZmxhZ3MgPSBDTEtfSVNfQ1JJVElDQUwsIH0sCj4+Pj4g
KyAgICB7IC5uYW1lID0gInBjaWUiLCAuYml0ID0gMTQsIH0sCj4+Pj4gKyAgICB7IC5uYW1lID0g
InJvYm9zdzI1MCIsIC5iaXQgPSAxNiwgfSwKPj4+PiArICAgIHsgLm5hbWUgPSAicm9ib3N3MDI1
IiwgLmJpdCA9IDE3LCB9LAo+Pj4+ICsgICAgeyAubmFtZSA9ICJzZHIiLCAuYml0ID0gMTksIC5m
bGFncyA9IENMS19JU19DUklUSUNBTCwgfSwKPj4+PiArICAgIHsgLm5hbWUgPSAidXNiIiwgLmJp
dCA9IDIwLCB9LAo+Pj4KPj4+IFRoaXMgc2hvdWxkIHByb2JhYmx5IGJlICJ1c2JkIiB0byBpbmRp
Y2F0ZSB0aGlzIGlzIHRoZSBVU0IgZGV2aWNlIGNsb2NrCj4+PiAobm90IGhvc3QpCj4+Cj4+IE9r
LCBJIHdpbGwgY2hhbmdlIGl0LiBJIGdvdCBjb25mdXNlZCBieSB0aGUgZmFjdCB0aGF0IGJvdGgg
KHVzYmQgYW5kIHVzYmgpIHdlcmUgcHJlc2VudCBvbiA2MzE4X21hcF9wYXJ0Lmg6Cj4+ICNkZWZp
bmUgVVNCRF9DTEtfRU4gICAgICAgICAoMSA8PCAyMCkKPj4gI2RlZmluZSBVU0JIX0NMS19FTiAg
ICAgICAgICgxIDw8IDIwKQo+IAo+IElzIHRoZXJlIGEgZGF0YXNoZWV0IHRvIHZlcmlmeSB0aGF0
PwoKTm90IGEgcHVibGljIG9uZSwgYnV0IEkgY2FuIGNvbmZpcm0gdGhpcyBpcyBjb3JyZWN0IGdp
dmVuIHRoZSBpbnRlcm5hbApkYXRhc2hlZXQuCi0tIApGbG9yaWFuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
