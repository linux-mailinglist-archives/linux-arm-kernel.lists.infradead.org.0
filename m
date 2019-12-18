Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FAA124DEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yL3WpdyspHecsq0a+14g9fwjZNds0V8MEhgp12fWeM=; b=jKCh82bfWhKf8o
	lFsTB5WJUl5xgzXaeW53h7v+fZM5LrZ1PBMpP0qm5ww9cJOHt6vPtD5PIDVfaJHBdLFmlHWRlz58c
	9IR5+HXTk4Url5KXz4KroazsdKBPsa6BrKkg17W1GflyO+THEd+OVbwolSmZTPyHTjrNF+8UBj0/z
	/gdrRY2irikVnPO61kbBrdNhWZ+iSdYyh2aXeMs698kKn9E6ueIntwKgwM0VPMetEMQhI3lVm9Jwg
	P4K57uKfxQ2JqCH70msPdYePKK3AiRyBx5s0i+6E5h9prr+KMvtr707zHAnaIs41w5FaMxqxDOZTm
	K1AZ1zLLqBC5JJhe27Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcKF-00032X-GK; Wed, 18 Dec 2019 16:37:27 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcK3-000322-Kh
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:37:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id j42so2966409wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 08:37:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=QydrVO/rNZd63JheuO9lqD6sfCU1B2E4W4CkJuCYMB0=;
 b=L4CJqu4iC/Cdb84U5mDKCTKM4RacewHvLUzKH8AMMNXL1sivqGoA3ZG5FnTGPf896f
 lviLXF3BBmD65/gay0C6dNTG5VzbdQ6/bGqDtgLcQBkfVZrRmG4qxj+xDo9YiLtOe7N6
 cm45zzKN5AWA0VzRgE4lroBimCSnmMcrgPaJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=QydrVO/rNZd63JheuO9lqD6sfCU1B2E4W4CkJuCYMB0=;
 b=ZTnb7pnHObDNebwomhVfrjSlvnC9OyCJv1YdIJCuVNOnCuB/2GTgYb80Oy89Ic4Cvb
 bLam9849QbwzrtHd9RMraGvaZa4UDlbuElb4UWx8isUFQSzLIcEuGaZr2yT+ssu7G8Oc
 Klf9uc5Hhm0yPMFejDGsOWh8YhlgLJAqzngsp5W4vK0a/Er2LYZXjs/S461PdMw3BU56
 bVvSipAQgCtqsDWObGPMowAdP1NcQ7AgE2dGFyNOpMUxYrn2jbl7WWuTA5CmNKbYuwtx
 6JEAtTY4b7B6WQMImG9LCIID/7GoBoJmom1YhW1q72EQqAu9J7WvZYlrecWC0NgdAL8y
 L6MQ==
X-Gm-Message-State: APjAAAVduA04q7/1+WQWSluxIOY9QtHIO1m+/XFBG5uxW31zCvmO/KL2
 th069zuFZNkfC/Oxk/qBkxZ9wA==
X-Google-Smtp-Source: APXvYqxSvZ3lKWdFwwu7l/PNa+A2cXnj/cTcXUqK5MFusm/tEkRwm/aMhvrVyvRlqLLsHOIo/Lg/Wg==
X-Received: by 2002:a5d:494f:: with SMTP id r15mr3995530wrs.143.1576687033389; 
 Wed, 18 Dec 2019 08:37:13 -0800 (PST)
Received: from [10.28.17.247] ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id w8sm7025763wmd.2.2019.12.18.08.37.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Dec 2019 08:37:12 -0800 (PST)
Subject: Re: [PATCH 1/2] include: trace: Add SCMI header with trace events
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20191216161650.21844-1-lukasz.luba@arm.com>
 <20191216161650.21844-1-lukasz.luba@arm.com> <20191218120900.GA28599@bogus>
From: Jim Quinlan <james.quinlan@broadcom.com>
Openpgp: preference=signencrypt
Autocrypt: addr=james.quinlan@broadcom.com; prefer-encrypt=mutual; keydata=
 mQENBFOXa3ABCADHz9QNP8upEMOGzf0RJ1lhBRnacq5Gz9fcbmcxK2y4PXtT1JR2WJWT3roY
 oHUXKL42zA74Iv6ODOjvO/VcvmJTllbz5zhuj5hDHBTNdSdspHWJMS3VdRtB5YQ4+4SNfi4O
 +ucstwf5U8HHLtsFes1udLWgujK4CD2mHBpR1tIc7dXP7jsCcxvkwA/jMN8D8w80kE1RY1eM
 3Chfft2oJOMK54n8f9x+iWdDsXV2e5vk0TLAJPB8ErGbAWj+HF+SQ/QdI6hdn/KbEQgJyZCV
 t8mB2uDfjvp14PIY02OSu9vgEWVYMMPoNLazromChJBtflewbp/Uim7BWYvcYRCPwx7VABEB
 AAG0KEppbSBRdWlubGFuIDxqYW1lcy5xdWlubGFuQGJyb2FkY29tLmNvbT6JATgEEwECACIF
 AlazUjUCGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJENnFxA/a7tJZiMwH/RHLgTPx
 BzrlFPQbEDfh05FXthTM0r1wC8AwHGmXhaxMT352Ju4jqCPvhF4YbczqEmuSFqOHZ6hQhBah
 L/O4QYRtBUCYhGg/cQ5WzklE48A2iNEoSsA8rP6Cy4wzXKrO0yPHQPyDtQ/o/Fa6T6r2EBAT
 mVtQBizeiDkUKDgfYU+o0iTW+205myQ9tTe3R0BJmq+F6dYdusKHRn9QXkm5oUC/tea3bq6N
 jnExBVz8LFaZRxe5uVs5Hwa+ZZqqsj3xJ6CmPQIktjcX8cHUSdrd/B7BC/kBwhhUeKT5HfQl
 KNk75rbMY8vJy8emev72Tyi3zq3tNy7DZvZoAmX5NGua8625AQ0EU5drcAEIAKmzln4+BvCz
 CfrbQqCd/EUhmVesujmNO2lTUFL20Wv1Kq27ZFXPaWfe9+lxg9R+p1Ry4ChRk7xZ34r56t0i
 lGZKH2CIETGChBedfOoDTcgt7K9lMlIxl9QIVEt5yxaqUExN38TIeEayBdeZSbPtmWzGQGl1
 kaUHY8l8GWSVB6mJrJaEnfpxt8xTbHdCbPzRM2nf5w76IFFvIP6ojnW06fWYTSYisPuidZs/
 7r1s8GpucrveKXNpzw3li9ChzI90zTBpMl3jWtqOQE5Nn0UHpPvN2SiAJ/Gm18LRP8TCTmOU
 bpLN2UoJhUGdscyYen+ECxVEZXsQCyASJvGzcWHjQL8AEQEAAYkBHwQYAQIACQUCU5drcAIb
 DAAKCRDZxcQP2u7SWUnTCAC8GirJT3daWnIgc23Qw0caHxP9dHLNKf4Fo1bxss5n6JoZgQWt
 kvqWRBBGqHTBbVBrScH5jI7kYRXaP37Q6J4bOxi68L/NC9qY7y41M6O+EaRZ4xYR5PjXY7yu
 eEeLGk0U8L6lgOtCH53lhk0i4E5BRKvg71T0UvmJPpSmtYUo/JH0sCinJADCQx+C961yPerJ
 xOO2mNvMpvXjMSqeWzYmZ9uhvRGVfo5O9i4MdFXpSm/3a3i/bZLaxPt3tjxJu+aPKHHadKcr
 8EmSDiRrCGBbnhED/fvI/titv3qxtMBLAY++03FOh6XC93NjsRC3yCogAY7iIuWoWBmisCQ6 Kcyg
Message-ID: <7b59a2f1-0786-d24f-a653-76a60c15a8ae@broadcom.com>
Date: Wed, 18 Dec 2019 11:37:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20191218120900.GA28599@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_083715_685062_4DBA7329 
X-CRM114-Status: GOOD (  23.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mingo@redhat.com, rostedt@goodmis.org, linux-arm-kernel@lists.infradead.org,
 lukasz.luba@arm.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi8xOC8xOSA3OjA5IEFNLCBTdWRlZXAgSG9sbGEgd3JvdGU6Cj4gT24gTW9uLCBEZWMg
MTYsIDIwMTkgYXQgMDU6MTU6NTRQTSAtMDUwMCwgSmltIFF1aW5sYW4gd3JvdGU6Cj4+IEZyb206
IEx1a2FzeiBMdWJhIDxsdWthc3oubHViYUBhcm0uY29tPgo+Pgo+PiArCj4+ICtUUkFDRV9FVkVO
VChzY21pX3hmZXJfYmVnaW4sCj4+ICsJVFBfUFJPVE8odTggaWQsIHU4IHByb3RvY29sX2lkLCB1
MTYgc2VxLCBib29sIHBvbGwpLAo+PiArCVRQX0FSR1MoaWQsIHByb3RvY29sX2lkLCBzZXEsIHBv
bGwpLAo+PiArCj4+ICsJVFBfU1RSVUNUX19lbnRyeSgKPj4gKwkJX19maWVsZCh1OCwgaWQpCj4+
ICsJCV9fZmllbGQodTgsIHByb3RvY29sX2lkKQo+PiArCQlfX2ZpZWxkKHUxNiwgc2VxKQo+PiAr
CQlfX2ZpZWxkKGJvb2wsIHBvbGwpCj4+ICsJKSwKPj4gKwo+PiArCVRQX2Zhc3RfYXNzaWduKAo+
PiArCQlfX2VudHJ5LT5pZCA9IGlkOwo+PiArCQlfX2VudHJ5LT5wcm90b2NvbF9pZCA9IHByb3Rv
Y29sX2lkOwo+PiArCQlfX2VudHJ5LT5zZXEgPSBzZXE7Cj4+ICsJCV9fZW50cnktPnBvbGwgPSBw
b2xsOwo+PiArCSksCj4+ICsKPj4gKwlUUF9wcmludGsoImlkPSV1IHByb3RvY29sX2lkPSV1IHNl
cT0ldSBwb2xsPSV1IiwgX19lbnRyeS0+aWQsCj4+ICsJCV9fZW50cnktPnByb3RvY29sX2lkLCBf
X2VudHJ5LT5zZXEsIF9fZW50cnktPnBvbGwpCj4+ICspOwo+PiArCj4+ICtUUkFDRV9FVkVOVChz
Y21pX3hmZXJfZW5kLAo+PiArCVRQX1BST1RPKHU4IGlkLCB1OCBwcm90b2NvbF9pZCwgdTE2IHNl
cSwgdTMyIHN0YXR1cyksCj4+ICsJVFBfQVJHUyhpZCwgcHJvdG9jb2xfaWQsIHNlcSwgc3RhdHVz
KSwKPj4gKwo+PiArCVRQX1NUUlVDVF9fZW50cnkoCj4+ICsJCV9fZmllbGQodTgsIGlkKQo+PiAr
CQlfX2ZpZWxkKHU4LCBwcm90b2NvbF9pZCkKPj4gKwkJX19maWVsZCh1MTYsIHNlcSkKPj4gKwkJ
X19maWVsZCh1MzIsIHN0YXR1cykKPj4gKwkpLAo+PiArCj4+ICsJVFBfZmFzdF9hc3NpZ24oCj4+
ICsJCV9fZW50cnktPmlkID0gaWQ7Cj4+ICsJCV9fZW50cnktPnByb3RvY29sX2lkID0gcHJvdG9j
b2xfaWQ7Cj4+ICsJCV9fZW50cnktPnNlcSA9IHNlcTsKPj4gKwkJX19lbnRyeS0+c3RhdHVzID0g
c3RhdHVzOwo+PiArCSksCj4+ICsKPj4gKwlUUF9wcmludGsoImlkPSV1IHByb3RvY29sX2lkPSV1
IHNlcT0ldSBzdGF0dXM9JXUiLCBfX2VudHJ5LT5pZCwKPj4gKwkJX19lbnRyeS0+cHJvdG9jb2xf
aWQsIF9fZW50cnktPnNlcSwgX19lbnRyeS0+c3RhdHVzKQo+PiArKTsKPj4KPj4gSGVsbG8sCj4+
Cj4+IFdoZW4gdGhlcmUgYXJlIG11bHRpcGxlIG1lc3NhZ2VzIGluIHRoZSBtYm94IHF1ZXVlLCBJ
J3ZlIGZvdW5kIGl0Cj4+IGEgY2hvcmUgbWF0Y2hpbmcgdXAgdGhlICdiZWdpbicgZXZlbnQgd2l0
aCB0aGUgJ2VuZCcgZXZlbnQgZm9yIGVhY2gKPj4gU0NNSSBtc2cuICBUaGUgaWQgKGNvbW1hbmQp
IG1heSBub3QgYmUgdW5pcXVlLCB0aGUgcHJvdG9faWQgbWF5IG5vdCBiZQo+PiB1bmlxdWUsIGFu
ZCB0aGUgc2VxIG1heSBub3QgYmUgdW5pcXVlLgo+IEkgYWdyZWUgb24gaWQgYW5kIHByb3RvX2lk
IHBhcnQgZWFzaWx5IGFuZCB0aGUgc2VxIG1heSBub3QgYmUgdW5pcXVlCj4gaWYgYW5kIG9ubHkg
aWYgdGhlIHByZXZpb3VzIGNvbW1hbmQgaGFzIGNvbXBsZXRlZC4KPgo+PiBUaGUgY29tYmluYXRp
b24gb2YgdGhlIHRocmVlIG1heSBub3QgYmUgdW5pcXVlLgo+IE5vdCAxMDAlIHN1cmUgb24gdGhh
dC4gSSByZW1lbWJlciBvbmUgb2YgdGhlIGlzc3VlIHlvdSByZXBvcnRlZCB3aGVyZSBPUwo+IHRp
bWVzIG91dCBhbmQgcGxhdGZvcm0gbWF5IHN0aWxsIGJlIHByb2Nlc3NpbmcgaXQuIFRoYXQncyBv
bmUgb2YgdGhlCj4gY2FzZSB3aGVyZSBzZXEgaWQgbWF5IGdldCByZS1hc3NpZ25lZCwgYnV0IG5v
dyB0aGF0J3MgZml4ZWQgYW5kIHRoZQo+IHNjZW5hcmlvIG1heSBub3QgaGFwcGVuLiBJIGFtIHRy
eWluZyB0byB1bmRlcnN0YW5kIHdoeSB5b3UgdGhpbmsgaXQKPiBpcyBub3QgdW5pcXVlID8KSWYg
SSBzdWJtaXQgYSBzZXJpZXMgb2YgZml2ZSBjbGtfZW5hYmxlKCkgY2FsbHMgdmlhIFNDTUksIGFu
ZCB0aGV5IGFyZSBhbGwKZXhlY3V0ZWQgc2VxdWVudGlhbGx5LCB0aGV5IHdpbGwgbW9zdCBsaWtl
bHkgaGF2ZSB0aGUgc2FtZSBzZXEtcHJvdG8tY21kIHZhbHVlCi0tIGRvIHlvdSBhZ3JlZT/CoCBO
b3cgdHlwaWNhbGx5IG9uZSBjYW4gbWF0Y2ggdGhlIGJlZ2luIHRyYWNlcG9pbnQgd2l0aCB0aGUK
ZW5kIGJlY2F1c2UgdGhleSBjb21lIGluIHBhaXJzLsKgIEJ1dCB3aGVuIHlvdSBhcmUgdXNpbmcg
Zm91ciBwcm90b2NvbHMgYW5kwqAKdGhlIG1ib3ggcXVldWUgaGFzIG1vcmUgdGhhbiBvbmUsIGl0
IGlzIGRpZmZpY3VsdCB0byBleWViYWxsIHRoZSB0cmFjZSBvdXRwdXQKYW5kIGhhdmUgYSBnb29k
IGlkZWEgb2Ygd2hhdCBpcyBnb2luZyBvbi7CoCBJZiBvbmUgdXNlcyBhIHBvc3QKcHJvY2Vzc2lu
ZyBzY3JpcHQsIHRoYXQncyBhbm90aGVyIHN0b3J5Lgo+Cj4+IFdvdWxkIGl0IG1ha2Ugc2Vuc2Ug
dG8gYXNzaWduIGEgbW9ub3RvbmljYWxseSBpbmNyZWFzaW5nIElEIHRvIGVhY2gKPj4gbXNnIHNv
IHRoYXQgb25lIGNhbiBlYXNpbHkgbWF0Y2ggdGhlIHR3byBldmVudHMgZm9yIGVhY2ggbXNnPwo+
IEkgYW0gbm90IHN1cmUgaWYgd2UgbmVlZCB0byBtYWludGFpbiBhIHRyYWNrZXIvY291bnRlciBq
dXN0IGZvciB0cmFjZQo+IHB1cnBvc2VzLgpJIHdhcyBqdXN0IHN1Z2dlc3RpbmcgdGhpcyBmb3Ig
Y29uc2lkZXJhdGlvbiAtLSBpZiB5b3UgZGVlbSBpdCBub3QgaGVscGZ1bCwKb3IgY2Fubm90IGRl
bW9uc3RyYXRlIGl0cyB1c2VmdWxuZXNzLCBieSBhbGwgbWVhbnMgZG8gbm90IGFkZCBpdC4KSSBo
YXZlIGFuIGFsdGVybmF0aXZlIG1ldGhvZCBmb3IgbG9nZ2luZyBTQ01JIGV2ZW50cyB0aGF0IEkg
cHJlZmVyCihzZWUgYmVsb3cgYXMgdG8gd2h5KS4KPgo+PiBUaGlzIGlkIGNvdWxkIGJlIHRoZSBy
ZXN1bHQgb2YgYW4gYXRvbWljIGluY3JlbWVudCBhbmQKPj4gY291bGQgYmUgc3RvcmVkIGluIHRo
ZSB4ZmVyIHN0cnVjdHVyZS4gIE9mIGNvdXJzZSwgaXQgd291bGQgYmUgb25lIG9mCj4+IHRoZSB2
YWx1ZXMgcHJpbnRlZCBvdXQgaW4gdGhlIGV2ZW50cy4KPj4KPj4gQWxzbywgd291bGQgeW91IGNv
bnNpZGVyIGEgdGhpcmQgZXZlbnQsIHJpZ2h0IGFmdGVyIHRoZQo+PiBzY21pX2ZldGNoX3Jlc3Bv
bnNlKCkgaW52b2NhdGlvbiBpbiBzY21pX3J4X2NhbGxiYWNrKCk/ICBJJ3ZlIGZvdW5kCj4+IHRo
aXMgdG8gYmUgaW5zaWdodGZ1bCBpbiBzaXR1YXRpb25zIHdoZXJlIHdlIHdlcmUgZGVidWdnaW5n
IGEgdGltZW91dC4KPj4KPj4gSSdtIGZpbmUgaWYgeW91IGVsZWN0IG5vdCB0byBkbyB0aGUgYWJv
dmU7IEkganVzdCB3YW50ZWQgdG8gcG9zdAo+PiB0aGlzIGZvciB5b3VyIGNvbnNpZGVyYXRpb24u
Cj4+Cj4gSSBhbSBpbnRlcmVzdGVkIGluIHRoZSBzY2VuYXJpbyB3ZSBjYW4gbWFrZSB1c2Ugb2Yg
dGhpcyBhbmQgYWxzbyBoZWxwCj4gaW4gdGVzdGluZyBpdCBpZiB3ZSBhZGQgdGhpcy4gSSBhbSBu
b3QgYWdhaW5zdCBpdCBidXQgSSBkb24ndCBzZWUgdGhlCj4gbmVlZCBmb3IgaXQuCkkgaGF2ZSBh
IHRlc3QgZHJpdmVyIHRoYXQgZm9ya3MgZm91ciB0aHJlYWRzLCBlYWNoIG9mIHdoaWNoIGluZGly
ZWN0bHkKY3JlYXRlcyBTQ01JIG1lc3NhZ2VzIG9mIGRpZmZlcmVudCBwcm90b2NvbHMgKHNlbnNv
ciwgY2xrLCBwZXJmLCBicmNtKS7CoCBJbiBvdGhlcgp3b3JkcywgYSBzdHJlc3MgdGVzdCBmb3Ig
dGhlIFNDTUkgaW5mcmFzdHJ1Y3R1cmUgYW5kIHBsYXRmb3JtIHJlc3BvbnNlLsKgIEkKc3VzcGVj
dCB5b3UgaGF2ZSBhIHNpbWlsYXIgdGVzdCBjb25maWd1cmF0aW9uP8KgIEkgc2V0IHRoaXMgdXAg
c2/CoCB3ZSBjYW4gcmVwcm9kdWNlCnNvbWUgcHJvYmxlbXMgdy9vIGhhdmluZyB0byBydW4gdGhl
IGVudGlyZSBtaWRkbGV3YXJlIHN0YWNrLgoKQXQgYW55IHJhdGUswqAgSSd2ZSB0ZXN0ZWQgVjIs
IGFuZCBhbHRob3VnaCBJIGdldCBhIGxvdCBvZgoKLi4uIHNjbWlfeGZlcl9iZWdpbjogdHJhbnNm
ZXJfaWQ9NDgzNzkgbXNnX2lkPTcgcHJvdG9jb2xfaWQ9MTI4IHNlcT0wIHBvbGw9MAouLi4gc2Nt
aV9yeF9kb25lOiB0cmFuc2Zlcl9pZD00ODM3OSBtc2dfaWQ9NyBwcm90b2NvbF9pZD0xMjggc2Vx
PTAgbXNnX3R5cGU9MAouLi4gc2NtaV94ZmVyX2VuZDogdHJhbnNmZXJfaWQ9NDgzODAgbXNnX2lk
PTggcHJvdG9jb2xfaWQ9MTI4IHNlcT0wIHN0YXR1cz0wCi4uLiBzY21pX3hmZXJfYmVnaW46IHRy
YW5zZmVyX2lkPTQ4MzgxIG1zZ19pZD03IHByb3RvY29sX2lkPTEyOCBzZXE9MCBwb2xsPTAKLi4u
IHNjbWlfcnhfZG9uZTogdHJhbnNmZXJfaWQ9NDgzODEgbXNnX2lkPTcgcHJvdG9jb2xfaWQ9MTI4
IHNlcT0wIG1zZ190eXBlPTAKLi4uIHNjbWlfeGZlcl9lbmQ6IHRyYW5zZmVyX2lkPTQ4MzgxIG1z
Z19pZD03IHByb3RvY29sX2lkPTEyOCBzZXE9MCBzdGF0dXM9MAouLi4gc2NtaV94ZmVyX2JlZ2lu
OiB0cmFuc2Zlcl9pZD00ODM4MiBtc2dfaWQ9OCBwcm90b2NvbF9pZD0xMjggc2VxPTAgcG9sbD0w
Ci4uLiBzY21pX3J4X2RvbmU6IHRyYW5zZmVyX2lkPTQ4MzgyIG1zZ19pZD04IHByb3RvY29sX2lk
PTEyOCBzZXE9MCBtc2dfdHlwZT0wCi4uLiBzY21pX3hmZXJfZW5kOiB0cmFuc2Zlcl9pZD00ODM4
MiBtc2dfaWQ9OCBwcm90b2NvbF9pZD0xMjggc2VxPTAgc3RhdHVzPTAKLi4uIHNjbWlfeGZlcl9i
ZWdpbjogdHJhbnNmZXJfaWQ9NDgzODMgbXNnX2lkPTcgcHJvdG9jb2xfaWQ9MTI4IHNlcT0wIHBv
bGw9MAoKCkkgYWxzbyBzZWUgYSBzdHJldGNoIG9mIG92ZXIgMTAwIChjb250aWd1b3VzKSBvZiB0
aGVzZQoKLi4uIHNjbWlfcnhfZG9uZTogdHJhbnNmZXJfaWQ9NDgzMjEgbXNnX2lkPTcgcHJvdG9j
b2xfaWQ9MTI4IHNlcT0wIG1zZ190eXBlPTAKLi4uIHNjbWlfcnhfZG9uZTogdHJhbnNmZXJfaWQ9
NDgzMjIgbXNnX2lkPTggcHJvdG9jb2xfaWQ9MTI4IHNlcT0wIG1zZ190eXBlPTAKLi4uIHNjbWlf
cnhfZG9uZTogdHJhbnNmZXJfaWQ9NDgzMjMgbXNnX2lkPTcgcHJvdG9jb2xfaWQ9MTI4IHNlcT0w
IG1zZ190eXBlPTAKLi4uIHNjbWlfcnhfZG9uZTogdHJhbnNmZXJfaWQ9NDgzMjQgbXNnX2lkPTgg
cHJvdG9jb2xfaWQ9MTI4IHNlcT0wIG1zZ190eXBlPTAKCndoaWNoIEkgY2Fubm90IGV4cGxhaW4g
LS0gcGVyaGFwcyBmdHJhY2UgZG9lc24ndCB3b3JrIHdlbGwgaW4gaW50ZXJydXB0IGNvbnRleHQ/
Ck5vdGUgYWxzbyB0aGF0IHdlIHVzZSBpbnRlcnJ1cHRzIGlzc3VlZCBmcm9tIHRoZSBwbGF0Zm9y
bSBmb3IgYm90aCBjaGFubmVscy4KClJlZ2FyZHMsCkppbQoKCj4KPiAtLQo+IFJlZ2FyZHMsCj4g
U3VkZWVwCj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
