Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867125F27E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 07:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a9W+TXhKqePO0djcZ0Xw5ZccWC9nXnqFeMyTDifhAe0=; b=MKLIkNfCZFSWWllIT2ssJTw/G
	lUYckbWSBeJYaWAQfgmI89zM1QP9h7TbdOr+G5SHTi6jLe/FcjPOYTwEqmjiB0/jKQSiyyLkdnoy9
	8lfaaLU/zkpsdxzzw8J4BVvryFKFeNA6a6akRITTZmFQ+A7fzOy/mVv6FlvTxH2ed7IIaH7SdbtV/
	Xs/c4WcChHR96VyqhM8Q2IGV485gya1aX4QEYnACDxjSXct8BITmldbGEAx6fjQEQUfFRXza0e7ta
	Iqkg2kXIb7y6MCpP+XNDAJaa7jQdO6Ga3mi4WkkMrJWr56vxc+JGUtf28ICCm3nds1Aa+qdVNOQQ0
	iV+NRo5Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiuif-0001py-VX; Thu, 04 Jul 2019 05:55:46 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiuiT-0001p0-82
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 05:55:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so2418547pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 22:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=BX5JDaciana7ktLIahHDZ8Rm/ZU0HX0KyhCu3VI68A8=;
 b=ES/LWPfND6i8EUl8ALV5oWggRPVLI7ruCB9fs/GvPzxHMIPoN81XcE8xKezsMra/y6
 dSwtmhsVOcDEDLA3+63LTMxSlFWvNLIzPEdZZiYtQ3E0aqVn5T5Alw1PRyomomnXkJD6
 8TSPx95eZ4q2HFnM+Y18aqUHNumIeDhdJuw7YW81gRweXQIH3ei5iN4365L5rHuTezoO
 mbv+3O9cU982/pSlPyZrIJGuMZwxmgH2I//jRmEenMlfFtkEaW8stYKYUR7edjVF4Wln
 rsVaLY8yfmeSuPwncUDuN/KSvjXMeRrokfWjIUtYnBY04EyiTl/bZoKHY9T/rp7ef961
 F3RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding;
 bh=BX5JDaciana7ktLIahHDZ8Rm/ZU0HX0KyhCu3VI68A8=;
 b=qHB9UFsNTudybpOu0cChSonHsjwcxrO6oVwrc4HNNdclExrJ5Vb904walxf9nmAE9H
 KxfkWAL+fuLCSDrNG8F71bBPJ7NkrEKmXqdZeqJgf6SmSz9m5tCzS8SRqCHdcabntCSX
 sfxE8z4taXFkmKNZj7ox/pc0Rxqi0qk1NkNcFS7AixFsQ7ZLByd+irxcvw410rJxz+gM
 kP6wfVqiyHxpvrwMK9dEVncAfYQ3HgseXPVoKC6pphAugOIkfa7WtLiosKJnK8ilhR4y
 jDUIii9F3S1QIZl+EqIf1L1td7U+aW3U+xo9NGHtmu1zm4WkCZpv5RgMwHIuYuW6EOdG
 6dJw==
X-Gm-Message-State: APjAAAVDE0urM+z1HfMzJFrxtuXitP/am+Fl4qFCME7Tves+wB2CtcBz
 8n/3uD2OiYVWEZem0eqJXXA=
X-Google-Smtp-Source: APXvYqwDEIQv50OOSV4lqbB7mHxRneKKwMjQFsVni/kO8fTksoN52y09PuYbOrKCqczquTT9hKw8LQ==
X-Received: by 2002:a63:c508:: with SMTP id f8mr10813454pgd.48.1562219731123; 
 Wed, 03 Jul 2019 22:55:31 -0700 (PDT)
Received: from [0.0.0.0] ([80.240.31.150])
 by smtp.gmail.com with ESMTPSA id j11sm5792476pfa.2.2019.07.03.22.55.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 22:55:30 -0700 (PDT)
Subject: Re: [PATCH RFC 0/3] Support CPU hotplug for ARM64
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>, rjw@rjwysocki.net,
 catalin.marinas@arm.com, james.morse@arm.com
References: <1561720392-45907-1-git-send-email-wangxiongfeng2@huawei.com>
 <2b22cf4d-9646-9f20-41ae-cceb83d9791b@gmail.com>
 <135ee490-a5a6-46c9-208e-81849b20d6b6@huawei.com>
From: Jia He <hejianet@gmail.com>
Organization: ARM
Message-ID: <adfea83d-fb86-f388-3409-eea9564b938a@gmail.com>
Date: Thu, 4 Jul 2019 13:55:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <135ee490-a5a6-46c9-208e-81849b20d6b6@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_225533_367363_DD5BD20F 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hejianet[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: xiexiuqi@huawei.com, jonathan.cameron@huawei.com, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWGlvbmdmZW5nCgpPbiAyMDE5LzcvNCAxMToyNiwgWGlvbmdmZW5nIFdhbmcgd3JvdGU6Cj4g
SGkgSnVzdGluLAo+Cj4gT24gMjAxOS83LzQgMTE6MDAsIEppYSBIZSB3cm90ZToKPj4gSGkgWGlv
bmdmZW5nCj4+Cj4+IEl0IGlzIGEgbGl0dGxlIGJpdCBhd2tmdWwgdGhhdCBJIGFtIGFsc2/CoCBp
bnZlc3RpZ2F0aW5nIGFjcGkgYmFzZWQgY3B1IGhvdHBsdWcgaXNzdWUgc2lsaW1hciB3aXRoCj4+
Cj4+IHlvdXIgaWRlYS4gTXkgcXVlc3Rpb24gaXMgeW91ciBwdXJwb3NlIHRvIGltcGxlbWVudCB0
aGUgdmNwdSBob3RwbHVnIGluIGFybTY0IHFlbXU/Cj4gWWVzLCBteSBwdXJwb3NlIGlzIHRvIGlt
cGxlbWVudCB0aGUgdmNwdSBob3RwbHVnIGluIGFybTY0IHFlbXUuIFNvIHRoYXQgSSBjYW4gYWRk
IG9yIHJlbW92ZSB2Y3B1Cj4gd2l0aG91dCBzaHV0dGluZyBkb3duIHRoZSBHdWVzdCBPUy4KClRo
YW5rcyBmb3IgdGhlIGluZm9yLCBJIGd1ZXNzIHlvdSB1c2VkIEdFRCBkZXZpY2UgaW4gcWVtdSA7
LSk/CgotLS0KQ2hlZXJzLApKdXN0aW4gKEppYSBIZSkKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
