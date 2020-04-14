Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3041A8CAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 22:40:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fHINQwlCVXVwcm4oP8UVeWPLJBw1kSZj+8WPW6qg3Y8=; b=V5g3kdxMDUtYTD
	BrjZ/NpQWzJ0G1pYj9dg58YNqSZhI3NlFiRI7RmdfMrzbBEAumKrK5A8MyDl2C7I1HcZRq7Dyi6vG
	ilaIjfaKB+7bkEKHAoPwBSNn+xgHgJ34QWelFzJwlMvAXv5WJknVEFxRm3DdH7s9LvMLXFOxrBatP
	i4HYuk8U2Kvu1GLcqxSvBSgBdlmEX44R04Og/BeGXRqb1KLkAuEx3YPLaWu950C/DrimgnicGhP06
	3R9/9wImxc4xmytNu4i1td1NVHM5Ad0OyCseK2nLHdfkDSRPkcCbNw+zp7M+OSCW1pDsSCwn1F9Nr
	mkJTrT2td3HvAvWHTZdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOSLd-0007Ca-Ko; Tue, 14 Apr 2020 20:39:57 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOSLU-0007CF-DD
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 20:39:49 +0000
Received: by mail-lj1-x244.google.com with SMTP id r7so1246960ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 13:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=khTmp2TYHsRQBvVJOtQBRGE8HXfWWnh3qR1G0Y1hx2w=;
 b=WpMEIu6eM7FZWqOFDcKbvrCKcHbPw3WcuHFI4BxHyZ93xpuhcnnQYqgHNxBg4Ufyih
 AkXXlW+huvXJV0YfhZ2g4lbnpwTOyfDGTpkiqZErm9xItkhvHL14lNZYLAD6HjqekFtK
 QCiCWekjo3Yq7rD3OKGt7KeJ5uIdBnVsgT9kNJDkKSocvlyUdbwtrkkYJGgpA5LV4T/T
 +Ulz7lJ1oRXDP8DxCNCfwIqr1wmQ7e/Z2xj/ci87Oot5xlkd6NZ+0gDl4BxwrYyk0gHo
 +3WaTaMEFSGjT8XrKKlgzS44+xKAsErFDSA5gcTcrHRKMe8Uo///Ceg/LxYXN/0+Doqx
 Q7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=khTmp2TYHsRQBvVJOtQBRGE8HXfWWnh3qR1G0Y1hx2w=;
 b=Eo76ZsLDa1NSi8dKGRrdRYaaa8mk2bosnu8ItNo+q1Qe9idKA06cg5ibY/mN7jJyWx
 4+uQQ9ystW2tVy3FBsiO16Up4jzI7beKiaL0hRS+vRqVlzhKMUe5ohUyiFj5YhUDBWgz
 6UwR7gZEB6Lw/JCrEchD4DoeLn1xJfBzhW+ivcOx+PkLkVjB9O1CvDs4dqyNlL65t7OE
 no4EzmABl7MuFQRIMi0xSMLyjQhk3jzZ6EPor0VM2/B5S7sTefdQFF0cF3E/hYxSHzfz
 nxjW8kQVnJbyVgJyJPQpOPJninGjT8AN7HMqkbQvwrDiQVAMmlI7GbjXHyy8rmdaixnF
 Qlxg==
X-Gm-Message-State: AGi0Puaeaewwyxd9Vzv8ZCHsXGuOaTk6C10Hx2xmiPhfD6RioxHrpe84
 pqJ7oWfsskHs3AZMfdTzX6w8Vzgc
X-Google-Smtp-Source: APiQypLgro+dFqpUmd53bi7sLuYwFg61MWaD7404CUete81MLXi0Rc70RxWiF50erBpcVjZ61VKWeg==
X-Received: by 2002:a2e:6c0a:: with SMTP id h10mr1090372ljc.195.1586896783990; 
 Tue, 14 Apr 2020 13:39:43 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152]) by smtp.googlemail.com with ESMTPSA id
 r206sm11029258lff.65.2020.04.14.13.39.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 13:39:43 -0700 (PDT)
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <385ad42b-ebed-1783-0dd2-dc3693aeaf6b@gmail.com>
Date: Tue, 14 Apr 2020 23:39:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-10-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_133948_471805_E93231D6 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4gK3N0YXRp
YyBpbnQgdGVncmEyMTBfZW1jX3NldF9yYXRlKHN0cnVjdCBkZXZpY2UgKmRldiwKPiArCQkJCSBj
b25zdCBzdHJ1Y3QgdGVncmEyMTBfY2xrX2VtY19jb25maWcgKmNvbmZpZykKPiArewo+ICsJc3Ry
dWN0IHRlZ3JhMjEwX2VtYyAqZW1jID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gKwlzdHJ1Y3Qg
dGVncmEyMTBfZW1jX3RpbWluZyAqdGltaW5nID0gTlVMTDsKPiArCXVuc2lnbmVkIGxvbmcgcmF0
ZSA9IGNvbmZpZy0+cmF0ZTsKPiArCXM2NCBsYXN0X2NoYW5nZV9kZWxheTsKPiArCXVuc2lnbmVk
IGxvbmcgZmxhZ3M7Cj4gKwl1bnNpZ25lZCBpbnQgaTsKPiArCj4gKwlpZiAocmF0ZSA9PSBlbWMt
Pmxhc3QtPnJhdGUgKiAxMDAwVUwpCj4gKwkJcmV0dXJuIDA7CgpJc24ndCBpdCBwb3NzaWJsZSB0
aGF0IHBhcmVudCBpcyBjaGFuZ2VkLCB3aGlsZSB0aGUgcmF0ZSBpcyBub3Q/IEkgdGhpbmsKdGhl
IGNsb2NrIGNoYW5nZSBzaG91bGQgcHJvY2VlZCBpbiB0aGlzIGNhc2UuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
