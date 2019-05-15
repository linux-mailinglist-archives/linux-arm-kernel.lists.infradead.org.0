Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1EE1EB8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 11:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9t4p45nfu5oPdText9OT3vEWuqkDiCVdEIuKWzNRgY=; b=OuAUnwRAKAPXex
	VJVGBI+VzeYAo5Md3kok1sb0e787CCbiyUyqY1H8r4xoxVoj9/J1iUASDg7gOyR2Iul77NiEULIuJ
	dhuQfT6lY112vq7gwS4S3NpOLRl/wrBOejSPAFQ0636R3XwUPRLPw9XzLUg7ryg2Ctgt0HGwwUvQr
	b4KCNXZgSIj5AEHU+/8Astu6LEywgmJHKZXCqMSAmcx59FrdQnaCkWYGQFNogLQe9OFBraNspgLbY
	4LcvxjMjDEs7rTYz4CHE9pqPdeXOS20vg/NH8DB9qjnEbHzHWXHdb/vnZmWQoRn6QSdk+e5uNRrAZ
	4rPLMWvqFF9zF8qiPz4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqeP-0006wH-U8; Wed, 15 May 2019 09:56:41 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqeH-0006vn-TI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 09:56:35 +0000
Received: by mail-wr1-x444.google.com with SMTP id r7so1901020wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 02:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5JYhbd/vO4XoD/CtHSzLTiUyvf3UwZx+Y3JbyqMKmfs=;
 b=gBB5sus/t6TCjIaVANYvetAi+rVR0U8RlHgIDuV/jFgGLO+E1mCWhtrSTMhXNFruCm
 oPrKOEGbTeOD1NtJi1vidX6vzkumsEJOBrlGTQnk8hrfl1chmz5IH8f9cRpeQRJsdiaR
 YY4qKKN1F0c3u1J9yFL/C5SX10FLE0/hxCSwJYrZ6Hl0aeJ22yn9zSx3wRh5puqiTPyR
 Kk9DCJ71sIF1+eThGf3kvQ2mzTptKwPEdKUL6Lj4wJ08VOl+Lsw4LOR4suWgQntD8A5+
 5/DLw2QsC6AceztCAROjPZPOBJNb88rLyqNCJFD2VqR6wwI4RdqabmfoXRyqZkfptEus
 tDpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5JYhbd/vO4XoD/CtHSzLTiUyvf3UwZx+Y3JbyqMKmfs=;
 b=HTD28q1VsF9GSmIY78l7UG4y4I1nnSykR18jfHRH7KMCkUPIPe8ORiTJhHSQ0BNCUc
 X0teH6eoYe2ezORJhZHDD/paskL3X6nflVy3O+b5IxJH4fbd/7hcRPR4eecvoK65Qnfd
 GV/T76Rz1d2Yw4oU+zjP9QDQJZajmNws/sY+pJF6R17Aw95eIC9Hz4OIx9VQAE7ptZX9
 rWLBBadDK6pyyZRw0/jPmSEKBH2kSDhP8CUjK0md1xUP1nn+feuGww2LUJmRwRm/Pg0m
 gyjRxhecMJtrmHBJWU8G4UiaL5Y1riD15wRen1UBrYAT/CEhy9PPDCRCd0jXblrMyEqT
 txxQ==
X-Gm-Message-State: APjAAAUcE6k4zeO7NOlSXrtxLlloBti4/S7f5CVLyb/8SGvWFKnHKUNO
 pg/AC+cwtYQ7rRZLO9Z0BK2F0zC8bv8=
X-Google-Smtp-Source: APXvYqxozk+6bk7th/l8gbao/9YhKjUJ5EJNO5OynkqEGlmWbYZkWun7AiVJeD9feyohHwCreEO9hQ==
X-Received: by 2002:adf:b3d1:: with SMTP id x17mr24575739wrd.31.1557914191908; 
 Wed, 15 May 2019 02:56:31 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id j13sm1096094wru.78.2019.05.15.02.56.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 02:56:31 -0700 (PDT)
Subject: Re: [PATCH v4 2/3] PM / EM: Expose perf domain struct
To: Quentin Perret <quentin.perret@arm.com>
References: <20190515082318.7993-1-quentin.perret@arm.com>
 <20190515082318.7993-3-quentin.perret@arm.com>
 <0ced18eb-e424-fe6b-b11e-165a3c108170@linaro.org>
 <20190515091658.sbpg6qiovhtblqyr@queper01-lin>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <698400c0-e0a4-4a86-b9df-cdb9bd683c0f@linaro.org>
Date: Wed, 15 May 2019 11:56:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515091658.sbpg6qiovhtblqyr@queper01-lin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_025633_946617_A5D432C4 
X-CRM114-Status: GOOD (  24.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: linux-pm@vger.kernel.org, viresh.kumar@linaro.org, amit.kachhap@gmail.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, will.deacon@arm.com,
 edubezval@gmail.com, mka@chromium.org, catalin.marinas@arm.com,
 rui.zhang@intel.com, javi.merino@kernel.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTUvMDUvMjAxOSAxMToxNywgUXVlbnRpbiBQZXJyZXQgd3JvdGU6Cj4gSGkgRGFuaWVsLAo+
IAo+IE9uIFdlZG5lc2RheSAxNSBNYXkgMjAxOSBhdCAxMTowNjoxOCAoKzAyMDApLCBEYW5pZWwg
TGV6Y2FubyB3cm90ZToKPj4gT24gMTUvMDUvMjAxOSAxMDoyMywgUXVlbnRpbiBQZXJyZXQgd3Jv
dGU6Cj4+PiBJbiB0aGUgY3VycmVudCBzdGF0ZSwgdGhlIHBlcmZfZG9tYWluIHN0cnVjdCBpcyBm
dWxseSBkZWZpbmVkIG9ubHkgd2hlbgo+Pj4gQ09ORklHX0VORVJHWV9NT0RFTD15LiBTaW5jZSB3
ZSBuZWVkIHRvIHdyaXRlIGNvZGUgdGhhdCBjb21waWxlcyBib3RoCj4+PiB3aXRoIG9yIHdpdGhv
dXQgdGhhdCBvcHRpb24gaW4gdGhlIHRoZXJtYWwgZnJhbWV3b3JrLCBtYWtlIHN1cmUgdG8KPj4+
IGFjdHVhbGx5IGRlZmluZSB0aGUgc3RydWN0IHJlZ2FyZGxlc3Mgb2YgdGhlIGNvbmZpZyBvcHRp
b24uIFRoYXQgYWxsb3dzCj4+PiB0byBhdm9pZCB1c2luZyBzdHViYmVkIGFjY2Vzc29yIGZ1bmN0
aW9ucyBhbGwgdGhlIHRpbWUgaW4gY29kZSBwYXRocwo+Pj4gdGhhdCB1c2UgdGhlIEVNLgo+Pj4K
Pj4+IEFja2VkLWJ5OiBWaXJlc2ggS3VtYXIgPHZpcmVzaC5rdW1hckBsaW5hcm8ub3JnPgo+Pj4g
U2lnbmVkLW9mZi1ieTogUXVlbnRpbiBQZXJyZXQgPHF1ZW50aW4ucGVycmV0QGFybS5jb20+Cj4+
Cj4+IFRoaXMgcGF0Y2ggaW1wbGllcyB0aGUgY3B1IGNvb2xpbmcgZGV2aWNlIGNhbiBiZSBzZXQg
d2l0aG91dCB0aGUgZW5lcmd5Cj4+IG1vZGVsLgo+Pgo+PiBJc24ndCBpdCBwb3NzaWJsZSB0byBt
YWtlIGEgc3Ryb25nIGRlcGVuZGVuY3kgZm9yIHRoZSBjcHUgY29vbGluZyBkZXZpY2UKPj4gb24g
dGhlIGVuZXJneSBtb2RlbCBvcHRpb24sIGFkZCB0aGUgZW5lcmd5IG1vZGVsIGFzIGRlZmF1bHQg
b24gYXJtIGFyY2gKPj4gYW5kIGRyb3AgdGhpcyBwYXRjaD8KPiAKPiBSaWdodCwgdGhhdCBzaG91
bGQgd29yayB0b28uCj4gCj4+IEFmdGVyIGFsbCwgdGhlIGNwdSBjb29saW5nIGlzIHVzaW5nIHRo
ZSBlbSBmcmFtZXdvcmsuCj4gCj4gVGhlIHJlYXNvbiBJIGRpZCBpdCB0aGF0IHdheSBpcyBzaW1w
bHkgdG8ga2VlcCB0aGluZ3MgZmxleGlibGUuIElmIHlvdQo+IGRvbid0IGNvbXBpbGUgaW4gVEhF
Uk1BTF9HT1ZfUE9XRVJfQUxMT0NBVE9SLCB5b3Ugd2lsbCBuZXZlciB1c2UgdGhlIEVNCj4gZm9y
IENQVSB0aGVybWFsLiBTbyBJIHRob3VnaHQgaXQgd291bGQgYmUgZ29vZCB0byBub3QgbWFuZGF0
ZSBjb21waWxpbmcKPiBpbiBFTkVSR1lfTU9ERUwgaW4gdGhpcyBjYXNlIC0tIHRoYXQgc2hvdWxk
IHNhdmUgYSBiaXQgb2Ygc3BhY2UuCj4gCj4gQnV0IFRCSCBJIGRvbid0IGhhdmUgYSBzdHJvbmcg
b3BpbmlvbiBvbiB0aGlzIG9uZSwgc28gaWYgZXZlcnlib2R5Cj4gYWdyZWVzIGl0J3MgZmluZSB0
byBqdXN0IG1ha2UgQ1BVX1RIRVJNQUwgZGVwZW5kIG9uIEVORVJHWV9NT0RFTCwgSSdtCj4gaGFw
cHkgdG8gZHJvcCB0aGlzIHBhdGNoIGFuZCBmaXggcGF0Y2ggMy8zLiBUaGF0IHdvdWxkIGluZGVl
ZCBzaW1wbGlmeQo+IHRoaW5ncyBhIGJpdC4KCk9rIGluIHRoaXMgY2FzZSBpdCB3aWxsIGJlIGJl
dHRlciB0byBkcm9wIHRoZSAyLzMgYW5kIGFkZCBhIHNtYWxsIHNlcmllcwpkb2luZyBmb3IgdGhl
IGNwdV9jb29saW5nLmMKCiNpZmRlZiBDT05GSUdfVEhFUk1BTF9HT1ZfUE9XRVJfQUxMT0NBVE9S
CgovKiBzdHJ1Y3R1cmUgZnJlcSAqLwoKLyogcG93ZXIyc3RhdGUgKi8KCi8qIHN0YXRlMnBvd2Vy
Ki8KCi8qIGdldHJlcXVlc3RlZHBvd2VyICovCgovKiBBbGwgZnVuY3Rpb25zIG5lZWRlZCBmb3Ig
dGhlIGFib3ZlICovCgojZW5kaWYKCnN0YXRpYyBzdHJ1Y3QgdGhlcm1hbF9jb29saW5nX2Rldmlj
ZV9vcHMgY3B1ZnJlcV9jb29saW5nX29wcyA9IHsKICAgICAgICAuZ2V0X21heF9zdGF0ZSAgICAg
ICAgICA9IGNwdWZyZXFfZ2V0X21heF9zdGF0ZSwKICAgICAgICAuZ2V0X2N1cl9zdGF0ZSAgICAg
ICAgICA9IGNwdWZyZXFfZ2V0X2N1cl9zdGF0ZSwKICAgICAgICAuc2V0X2N1cl9zdGF0ZSAgICAg
ICAgICA9IGNwdWZyZXFfc2V0X2N1cl9zdGF0ZSwKI2lmZGVmIENPTkZJR19USEVSTUFMX0dPVl9Q
T1dFUl9BTExPQ0FUT1IKICAgICAgICAuZ2V0X3JlcXVlc3RlZF9wb3dlciAgICA9IGNwdWZyZXFf
Z2V0X3JlcXVlc3RlZF9wb3dlciwKICAgICAgICAuc3RhdGUycG93ZXIgICAgICAgICAgICA9IGNw
dWZyZXFfc3RhdGUycG93ZXIsCiAgICAgICAgLnBvd2VyMnN0YXRlICAgICAgICAgICAgPSBjcHVm
cmVxX3Bvd2VyMnN0YXRlLAojZW5kaWYKfTsKClNvIHlvdSBkb24ndCBoYXZlIHRvIGNhcmUgYWJv
dXQgRU5FUkdZX01PREVMIHRvIGJlIHNldCBhcwpUSEVSTUFMX0dPVl9QT1dFUl9BTExPQ0FUT1Ig
ZGVwZW5kcyBvbiBpdC4KCkkgdGhpbmsgdGhlIHJlc3VsdCBmb3IgY3B1X2Nvb2xpbmcuYyB3aWxs
IGJlIGV2ZW4gbW9yZSBjbGVhbmVyIHdpdGggdGhlCmVtIGNoYW5nZS4KCgoKCi0tIAogPGh0dHA6
Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZv
ciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdl
cy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3
aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
