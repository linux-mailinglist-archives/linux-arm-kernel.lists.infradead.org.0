Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB5F180315
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 17:20:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Z7uMtHKO+wCAik71DXm13X9Jqw0Apdn8VRXLB5TbkU=; b=pyP1FgYEBtzOyF
	kR+gvGqIErKcW3UTBR/BfM0f+UJ0Fo6E1KwV4vuOkb1G1VbenIamXdGnKmaiYf7JRkb0f6TD55SCC
	3bovPCftNpypHs7UWnciVj8g0LQeNpFcqFD5dw9/RVdLp1xote5olsFPrDRoQjmD0t4IcZln3y9/B
	vr0KwgW7RiRyCOHuiT959tV7/4aSNI+ebjPPMRuMRH5NsaQ4x/JC+f3xE6Kds70LkDuJnQw7reGjw
	bxP+kZfancXVbrk+iYInYRb/W8qsIn/zjaTjGSZIPqrMOguxO3mXFE3uqVt/MS3KUEyWhXeBw3H5j
	hfkmDXmMPBw/OqlLU9Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBhc7-00042e-2i; Tue, 10 Mar 2020 16:20:15 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBhbw-0003BN-Q0
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 16:20:06 +0000
Received: by mail-lj1-x243.google.com with SMTP id o10so8103086ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 09:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=J1n1CjK3DESSyBmNxPalFUipSJmYITet4TKN4OHft7c=;
 b=HqCYx88GlfzFJ99ETs849WW5pHMsHcUqpqbHmrESJoEGqcgPYBBd7NcHtt75Cvd4St
 BFEJD4IFpQxTkUCKqRZ0ftOYTlyyTUzioTxbPF11JYBOwdb2osEqEeNHdzujLO4End4Y
 X0zPdJrx1NCd2LPdltyVmbxYd33JKr2kASvjoI83wyLaNkj3jXX16oO1v7k8Hnuw12Ed
 bVcBK1qax1dNwG/NGmGMbBr9tmcg3Vwusepc6EWHY3PSigtQe/Gu6W6XntThodiuXrGr
 Mu85kw1K0eDE2sBRFYbSe2+7DU0OWrYnCvcu4z+90oTREdKfOB5AJBJOuwgsceCqNvmP
 Jamg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=J1n1CjK3DESSyBmNxPalFUipSJmYITet4TKN4OHft7c=;
 b=Jd4iD4B3aArt6vkT3ziTCPauCfBCv/LQnoigFmkiuTioaHniLqaGoRK+PkeFGZTM5v
 YAnaFMQFr95v3UDHUgmkdeOCftfqYnioNzB84FWsvDJNt+gWJgPHUh/YHDcDD4YIIzra
 L8QYaqmA0/dX0jaE3Q95PJJKhsYuKDQfRVf0lY9B71TClStMVwp9UZdZWJQ1+A8pKw4P
 cXiRAJd/Dqy7m3bvafUF8abWfPaH1pkF7m9U9P7AVSacVaQnNQLmsGSjyYX91CChlHHs
 5ktT7sdySEa8iyIhvFJqBU4SkexNZvdQnTbAxwKIm2gs4IPGNXtXP1uAmbgZXmTdNmM3
 HY4w==
X-Gm-Message-State: ANhLgQ28v71TPG3Odbpg5khM7HxcZwicAzlU9LTzzPnWsnPMbeI7eF+4
 UacyCqNexwI2ZzIZrR4xH84IRuJP
X-Google-Smtp-Source: ADFU+vuk2CesxaGJ5WQuIGUaiBwcdsAUiqyJ65FAPmvnAfSsieZ1n7ZA9Y8skRjqkkI6bz4R+lxzJA==
X-Received: by 2002:a2e:9cd0:: with SMTP id g16mr13068009ljj.11.1583857201185; 
 Tue, 10 Mar 2020 09:20:01 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id l11sm18461933lfg.87.2020.03.10.09.20.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 09:20:00 -0700 (PDT)
Subject: Re: [PATCH v5 1/8] clk: tegra: Add PLLP_UD and PLLMB_UD for Tegra210
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-2-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <9b343fd1-15df-409a-390f-e30fa6bbbfe7@gmail.com>
Date: Tue, 10 Mar 2020 19:19:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200310152003.2945170-2-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_092004_862678_01F1280D 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMDMuMjAyMCAxODoxOSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBGcm9tOiBKb3Nl
cGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4KPiAKPiBJbnRyb2R1Y2UgdGhlIGxvdyBqaXR0ZXIg
cGF0aCBvZiBQTExQIGFuZCBQTExNQiB3aGljaCBjYW4gYmUgdXNlZCBhcyBFTUMKPiBjbG9jayBz
b3VyY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9zZXBoIExvIDxqb3NlcGhsQG52aWRpYS5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogVGhpZXJyeSBSZWRpbmcgPHRyZWRpbmdAbnZpZGlhLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9jbGsvdGVncmEvY2xrLXRlZ3JhMjEwLmMgICAgICAgICB8IDExICsrKysr
KysrKysrCj4gIGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svdGVncmEyMTAtY2FyLmggfCAgNCAr
Ky0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvdGVncmEvY2xrLXRlZ3JhMjEwLmMgYi9kcml2
ZXJzL2Nsay90ZWdyYS9jbGstdGVncmEyMTAuYwo+IGluZGV4IDQ1ZDU0ZWFkMzBiYy4uZjk5NjQ3
YjRhNzFmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL3RlZ3JhL2Nsay10ZWdyYTIxMC5jCj4g
KysrIGIvZHJpdmVycy9jbGsvdGVncmEvY2xrLXRlZ3JhMjEwLmMKPiBAQCAtMzE2MSw2ICszMTYx
LDE3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCB0ZWdyYTIxMF9wbGxfaW5pdCh2b2lkIF9faW9tZW0g
KmNsa19iYXNlLAo+ICAJY2xrX3JlZ2lzdGVyX2Nsa2RldihjbGssICJwbGxfbV91ZCIsIE5VTEwp
Owo+ICAJY2xrc1tURUdSQTIxMF9DTEtfUExMX01fVURdID0gY2xrOwo+ICAKPiArCS8qIFBMTE1C
X1VEICovCj4gKwljbGsgPSBjbGtfcmVnaXN0ZXJfZml4ZWRfZmFjdG9yKE5VTEwsICJwbGxfbWJf
dWQiLCAicGxsX21iIiwKPiArCQkJCQlDTEtfU0VUX1JBVEVfUEFSRU5ULCAxLCAxKTsKPiArCWNs
a19yZWdpc3Rlcl9jbGtkZXYoY2xrLCAicGxsX21iX3VkIiwgTlVMTCk7Cj4gKwljbGtzW1RFR1JB
MjEwX0NMS19QTExfTUJfVURdID0gY2xrOwo+ICsKPiArCS8qIFBMTFBfVUQgKi8KPiArCWNsayA9
IGNsa19yZWdpc3Rlcl9maXhlZF9mYWN0b3IoTlVMTCwgInBsbF9wX3VkIiwgInBsbF9wIiwKPiAr
CQkJCQkwLCAxLCAxKTsKPiArCWNsa3NbVEVHUkEyMTBfQ0xLX1BMTF9QX1VEXSA9IGNsazsKCklz
bid0IGl0IHBvc3NpYmxlIHRvIGF1dG8tZW5hYmxlIHRoZSBsb3ctaml0dGVyIGJpdCB3aGVuIG5l
Y2Vzc2FyeQpkdXJpbmcgb2YgdGhlIHJhdGUtY2hhbmdlIGJhc2VkIG9uIGEgZ2l2ZW4gY2xvY2st
cmF0ZT8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
