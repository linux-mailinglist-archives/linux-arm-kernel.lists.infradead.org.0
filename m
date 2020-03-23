Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BC718FB95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 18:36:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3AkoIrNkkbPPOzzrAWditGXxxmDFGdfmbmCwZBJs5AQ=; b=SdzRpbHqzkRQMar3sHgr7aeqfg
	Di/XghGeoWPbNjfDIt4tU47VU5Ocq2kwEuUp+UGIhgxCL8i9N8UFbuFnMQgP0lw2RBcodQfckkdFv
	QddhVzj/L48EDgjS0goaTqmTZBfuuNheBrBdXbJLbdF8DVRYzWrsX00SHNb4YiZpUl1UMvNCPg9uw
	Wsx4+/ppK+91PUk182732ZsVXAz5JN5QKeHw0+dK62ZB2i+gkWesVwYLV+ggDzJ83mGkjpkk/0qER
	xvTz2S9mpQUFu+wC+MHxzIvgaeY9ya72kb7hO8xsDajS9HLZuABN7hOcC6m/BMrcMsNnQkC4adyzs
	JewHMxAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQzk-0004hi-3c; Mon, 23 Mar 2020 17:36:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQza-0004hJ-0w
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 17:36:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id w10so18186872wrm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 10:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=Y978BZoWL/Nv/l3syw/ymq2dozPVKhNfim97d9dV9AI=;
 b=VS5ROEk/CRVwLM5pXDxZp+hy31tNXks+POvyDu4ojWZF87LEXRgYVimq1uBxG5EFF2
 YzoKP52KKQCVxhXf3yAOwfjB2FQnFWgrkdvtZJa3J3PQUUjpUHNFqqWrlRcgTwrUjJgj
 U5KqWDMqSiEO/GRi/65DDSVBTIQBnHUMWSyCeH6mqK4//liKYqC7Rox0xgccxBSVbhud
 8L18rQ6xtJ5u+uASYLYLyKVEsy6NIIlLgz7Vn1Zhjy0APfVj+YeWrXQ1AwLDha+tx0PD
 61QXKM4vIcbrUgPI4wLii7ipYCaFgx5X8zaK+XYKLa+64Eb6pzl7Q645FFeVpitMjy7/
 T0sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=Y978BZoWL/Nv/l3syw/ymq2dozPVKhNfim97d9dV9AI=;
 b=AIcZtTCMNWMq4MH+lj2o32NI0rTu1PPGW/mP8EgWJR4tkSdpT5xjiDXnnQvnNBY26o
 zYUJTtXDnPdGQWNkKeECgyCFe6qpzXRtNGAmjFaSLInT8FCBvXX/OV9/YbnUvF7v42/4
 E/X0TS9O7OLcGvnARINvhnBOPn4PV4DELr50lRzPqQ3/NmN9eppuMnp09RL/T17l4QYZ
 mVYxUsqx4/cfdbDJxPXPTN5Rq20uz9aOXj85jkAzJ+IEr33hh4Xm0TxUThgP3k2TqP3l
 /H2D+X+EGJFDpbB7XqECvu+qZ0kSwZBEAA2+KoixgFpgyBb3bxPMzxJnuAn7gAOnwsdq
 SSqA==
X-Gm-Message-State: ANhLgQ1Rvy0m81PwbIVXME4WVcwhq170x9iV4vBFGjbjGwVRPWwQ1zEA
 MOK2Jjt+n0v8UfipO0Y0PXAecey1ung=
X-Google-Smtp-Source: ADFU+vtRJ3u1vIkj4bP4rNZwTM7YyNgST/CW9egr00Ub28gFO9ist+Q6FF2gbYUQDcY4Ij+RueDmTQ==
X-Received: by 2002:a5d:5687:: with SMTP id f7mr9836939wrv.425.1584984959769; 
 Mon, 23 Mar 2020 10:35:59 -0700 (PDT)
Received: from zen.linaroharston ([51.148.130.216])
 by smtp.gmail.com with ESMTPSA id q3sm14092968wru.87.2020.03.23.10.35.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 10:35:58 -0700 (PDT)
Received: from zen (localhost [127.0.0.1])
 by zen.linaroharston (Postfix) with ESMTP id ACF731FF7E;
 Mon, 23 Mar 2020 17:35:57 +0000 (GMT)
References: <20200227113735.23605-1-peter.hilber@opensynergy.com>
 <20200317192053.15665-1-peter.hilber@opensynergy.com>
User-agent: mu4e 1.3.10; emacs 28.0.50
From: Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>
To: Peter Hilber <peter.hilber@opensynergy.com>
Subject: Re: [virtio-dev] [PATCH v3] Add virtio SCMI device specification
In-reply-to: <20200317192053.15665-1-peter.hilber@opensynergy.com>
Date: Mon, 23 Mar 2020 17:35:57 +0000
Message-ID: <87blonas8y.fsf@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_103602_081217_C76947F7 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: virtio-dev@lists.oasis-open.org, Sudeep.Holla@arm.com,
 Souvik.Chakravarty@arm.com, linux-arm-kernel@lists.infradead.org,
 virtio-comment@lists.oasis-open.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ClBldGVyIEhpbGJlciA8cGV0ZXIuaGlsYmVyQG9wZW5zeW5lcmd5LmNvbT4gd3JpdGVzOgoKPiBU
aGlzIHBhdGNoIHByb3Bvc2VzIGEgbmV3IHZpcnRpbyBkZXZpY2UgZm9yIHRoZSBBcm0gU0NNSSBw
cm90b2NvbC4KPgo+IFRoZSBkZXZpY2UgcHJvdmlkZXMgYSBzaW1wbGUgdHJhbnNwb3J0IGZvciB0
aGUgQXJtIFNDTUkgcHJvdG9jb2xbMV0uIFRoZQo+ICpTKnlzdGVtICpDKm9udHJvbCBhbmQgKk0q
YW5hZ2VtZW50ICpJKm50ZXJmYWNlIHByb3RvY29sIGFsbG93cyBzcGVha2luZwo+IHRvIHN5c3Rl
bSBjb250cm9sbGVycyB0aGF0IGFsbG93IG9yY2hlc3RyYXRpbmcgdGhpbmdzIGxpa2UgcG93ZXIK
PiBtYW5hZ2VtZW50LCBzeXN0ZW0gc3RhdGUgbWFuYWdlbWVudCBhbmQgc2Vuc29yIGFjY2Vzcy4g
VGhlIFNDTUkgcHJvdG9jb2wKPiBpcyB1c2VkIG9uIFNvQ3Mgd2hlcmUgbXVsdGlwbGUgY29yZXMg
YW5kIGNvLXByb2Nlc3NvcnMgbmVlZCBhY2Nlc3MgdG8KPiB0aGVzZSByZXNvdXJjZXMuCj4KPHNu
aXA+Cj4KPiBPcGVuU3luZXJneSBoYXMgYSBwcm90b3R5cGUgaW1wbGVtZW50YXRpb24gKHdpdGhv
dXQgZGV2aWNlIHNwZWNpZmljCj4gZmVhdHVyZXMgc28gZmFyKSwgYW5kIHBsYW5zIHRvIHVwc3Ry
ZWFtIHRoZSBMaW51eCBrZXJuZWwgZHJpdmVyLgoKSGFzIGEgUkZDIG9mIHRoZSBrZXJuZWwgZHJp
dmVyIGJlZW4gcG9zdGVkIHlldD8gSSdtIGN1cmlvdXMgb24gaG93IGl0CkxpbnV4IGJhY2tlbmQg
aW50ZWdyYXRlcyB3aXRoIG90aGVyIGRldmljZXMuCgo+Cj4gVGhlIFBERiBvdXRwdXQgaXMgYXZh
aWxhYmxlIGF0IFsyXS4KPgo+IFsyXQo+IGh0dHBzOi8vc2hhcmUubWFpbGJveC5vcmcvYWpheC9z
aGFyZS8wNTYwNzZlNzA1NzExNDRmNTBjNGNhNzU3MTE0NGIzMTlhMWQ3MjM2ZGRhMWNkM2IvMS84
L016US9NelF2TVEKClRoaXMgUERGIHNlZW1zIHRvIGluY2x1ZGUgYSBmYWlyIG51bWJlciBvZiBl
eHRyYSBkZXZpY2VzIC0gaW5jbHVkaW5nIGFuClJQTUIgZGV2aWNlIEknbSBxdWl0ZSBpbnRlcmVz
dGVkIGluLiBJcyB0aGlzIGJlY2F1c2UgeW91IGFyZSBidWlsZGluZwpmcm9tIGEgdHJlZSB3aXRo
IGEgYnVuY2ggb2Ygcm9sbGVkIHVwIHVwZGF0ZXM/CgpJbiBmYWN0IGxvb2tpbmcgY2xvc2VyIGF0
IHRoZSByZW5kZXJlZCB2ZXJzaW9uIGl0IHNlZW1zIHRvIGJlIG1pc3NpbmcKZGV2aWNlIGlkIDMy
LgoKL21lIHdvbmRlcnMgb2ZmIHRvIGxvb2sgYXQgdGhlIG1ha2UgdG9vbGluZyBpbiB0aGUgdXBz
dHJlYW0gcmVwbyB0byBzZWUKaWYgdGhpbmdzIGNhbiBiZSB0d2Vha2VkIGEgYml0LgoKLS0gCkFs
ZXggQmVubsOpZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
