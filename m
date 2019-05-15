Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8791EA62
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 10:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvCMpdTubhuQMjpHXXDUOCDYPmI0/nnr2h6vkHgCkXY=; b=YDE+7pfYJd4hQ7
	UEQ+cUt5karnmrkIudP/YB7Dz9Be1C8OytDcvpf7SCFYz1HLQwX07X98IPLFhII7qsLc4xBCos46P
	HIzDP7pam+0HJDsIKvPlVe7wKbkdHRN2PqEec8tK4Mhx4Hzg4fL7oY9vESoSenm1vtSZYCv/7FqcI
	qja2cVR2WXSZ2nPv6biqm4M6TrVBh8LAhTvqmfn4DpkLe/b1c3pMxCpJkMxcgz3Bj8+4Leu89TRrD
	I9MSUkaM64XXFA2Id/sHrFweAxm5zGhHY9ucAyyVlrWZSHeKjLv0RGe5eo+XKshuBjue/aBGgX1I/
	Q5Prp8Zg4Cx5v8gs+Zpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQpYK-0003Qo-Sj; Wed, 15 May 2019 08:46:20 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQpYD-0003OB-9u
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 08:46:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id c66so4150928wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 01:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SjTzfocxmV9Q3qyS3D6y8G341QPk5z6P8wHPvkJzRmA=;
 b=vQ9ihMC4KeD1sH00RphG8WvBfibZMVI/ROw8bblIJDIs8HTOvbDXNSMqLjOxF4bNk9
 TsH5l1YoWQZsBNaLx7rJtxAaKPc6SvWC+hWDrYXHPvhWJFRowZ1/Spgad36aezY0tnaR
 4xlJODtu7vv9+bIolowJECSdosWGHjI0WB4F52pdrrl2G1B6LYFvNZB7lnKDxnUuOaLl
 fUzbGxZPiWSl88ur7+527fb37qoDhotzbeWTKHZlbjoP/jMXMPMZxlPK+slNWKZcMcPF
 mmFxRulwbNrCCp/Rr/K/miufZnZWsLUBUE+4DM9vWh1ugs8GaxiAGdRp9Jw3/IVSKxeY
 vfhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SjTzfocxmV9Q3qyS3D6y8G341QPk5z6P8wHPvkJzRmA=;
 b=QHWvNgsVEfMHK5CdwkUDsyS49Zcs3C34nmag8s6tlobT+EEHkyRkJgUgiX86wwm1rO
 6f7LDQk/QGSPP5rspz89V3mSLguwlGWbQtrhv/2WX3a8TAuGfBt4NEiRbEf6oNpVIQLh
 AwdJUwxYm2OGlfLGEKNzAX/eI8HUVmcW3Ee9n56awBpSAeNDhjnJ7zoIL9tuqBNZcIn0
 fhdJHkS3YssRhLErnJaOz32vZLw8ZOz3zaEqH999NfStWPX98mu0s6+Xi19fFF6yxlh3
 cA0R5jG0QojRf/cbB8TiFe0XPjXnwDUE7P0BgHXoLEO4wh9p9BSkCmqYc7AceLo93OcW
 2uiw==
X-Gm-Message-State: APjAAAW9DkeHBtqoMDAU9Q5tdPnTO0aVICa2LIDqZ8fUa+0xO83dNKJj
 qbOiium8pKw8DWBu7JtJ0FTVIvcl5xM=
X-Google-Smtp-Source: APXvYqykhcOsSF5cy288Wi7AKFIvGeafQ6EecV8kQ8OJaAyCvPprwNnZr8e/TsvC0TI1SiLtaInomA==
X-Received: by 2002:a1c:ac07:: with SMTP id v7mr21293143wme.49.1557909971165; 
 Wed, 15 May 2019 01:46:11 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id l16sm2111672wrb.40.2019.05.15.01.46.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 01:46:10 -0700 (PDT)
Subject: Re: [PATCH v4 1/3] arm64: defconfig: Enable CONFIG_ENERGY_MODEL
To: Quentin Perret <quentin.perret@arm.com>, edubezval@gmail.com,
 rui.zhang@intel.com, javi.merino@kernel.org, viresh.kumar@linaro.org,
 amit.kachhap@gmail.com, rjw@rjwysocki.net, will.deacon@arm.com,
 catalin.marinas@arm.com
References: <20190515082318.7993-1-quentin.perret@arm.com>
 <20190515082318.7993-2-quentin.perret@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <2f598ea3-752d-0f1d-fd33-f07cda3b7bd0@linaro.org>
Date: Wed, 15 May 2019 10:46:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515082318.7993-2-quentin.perret@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_014613_350846_4D810B96 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mka@chromium.org,
 ionela.voinescu@arm.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTUvMDUvMjAxOSAxMDoyMywgUXVlbnRpbiBQZXJyZXQgd3JvdGU6Cj4gVGhlIHJlY2VudGx5
IGludHJvZHVjZWQgRW5lcmd5IE1vZGVsIChFTSkgZnJhbWV3b3JrIG1hbmFnZXMgcG93ZXIgY29z
dAo+IHRhYmxlcyBmb3IgdGhlIENQVXMgb2YgdGhlIHN5c3RlbS4gSXRzIG9ubHkgdXNlciByaWdo
dCBub3cgaXMgdGhlCj4gc2NoZWR1bGVyLCBpbiB0aGUgY29udGV4dCBvZiBFbmVyZ3kgQXdhcmUg
U2NoZWR1bGluZyAoRUFTKS4KPiAKPiBIb3dldmVyLCB0aGUgRU0gZnJhbWV3b3JrIGFsc28gb2Zm
ZXJzIGEgZ2VuZXJpYyBpbmZyYXN0cnVjdHVyZSB0aGF0Cj4gY291bGQgcmVwbGFjZSBzdWJzeXN0
ZW0tc3BlY2lmaWMgaW1wbGVtZW50YXRpb25zIG9mIHRoZSBzYW1lIGNvbmNlcHRzLAo+IGFzIHRo
aXMgaXMgdGhlIGNhc2UgaW4gdGhlIHRoZXJtYWwgZnJhbWV3b3JrLgo+IAo+IFNvLCBpbiBvcmRl
ciB0byBwcmVwYXJlIHRoZSBtaWdyYXRpb24gb2YgdGhlIHRoZXJtYWwgc3Vic3lzdGVtIHRvIHVz
ZQo+IHRoZSBFTSBmcmFtZXdvcmssIGVuYWJsZSBpdCBpbiB0aGUgZGVmYXVsdCBhcm02NCBkZWZj
b25maWcsIHdoaWNoIGlzIHRoZQo+IG1vc3QgY29tbW9ubHkgdXNlZCBhcmNoaXRlY3R1cmUgZm9y
IElQQS4gVGhpcyB3aWxsIGFsc28gY29tcGlsZS1pbiBhbGwKPiBvZiB0aGUgRUFTIGNvZGUsIGFs
dGhvdWdoIGl0IHdvbid0IGJlIGVuYWJsZWQgYnkgZGVmYXVsdCAtLSBFQVMgcmVxdWlyZXMKPiB0
byB1c2UgdGhlICdzY2hlZHV0aWwnIENQVUZyZXEgZ292ZXJub3Igd2hpbGUgYXJtNjQgZGVmYXVs
dHMgdG8KPiAncGVyZm9ybWFuY2UnLgo+IAo+IEFja2VkLWJ5OiBWaXJlc2ggS3VtYXIgPHZpcmVz
aC5rdW1hckBsaW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFF1ZW50aW4gUGVycmV0IDxxdWVu
dGluLnBlcnJldEBhcm0uY29tPgoKQWNrZWQtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6
Y2Fub0BsaW5hcm8ub3JnPgoKPiAtLS0KPiAgYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZyB8
IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZyBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25m
aWcKPiBpbmRleCAyZDljMzkwMzNjMWEuLjQ4ODFhNzUyYWIzZiAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCj4gKysrIGIvYXJjaC9hcm02NC9jb25maWdzL2RlZmNv
bmZpZwo+IEBAIC05Nyw2ICs5Nyw3IEBAIENPTkZJR19YRU49eQo+ICBDT05GSUdfQ09NUEFUPXkK
PiAgQ09ORklHX0hJQkVSTkFUSU9OPXkKPiAgQ09ORklHX1dRX1BPV0VSX0VGRklDSUVOVF9ERUZB
VUxUPXkKPiArQ09ORklHX0VORVJHWV9NT0RFTD15Cj4gIENPTkZJR19BUk1fQ1BVSURMRT15Cj4g
IENPTkZJR19DUFVfRlJFUT15Cj4gIENPTkZJR19DUFVfRlJFUV9TVEFUPXkKPiAKCgotLSAKIDxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20v
cGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3Jn
PiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
