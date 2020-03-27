Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B5C195C7B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:21:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mXRRZDp5U71qJmIaBkuRnuongJJlau8LI1VvcRG5po0=; b=nEIrkpKShlpZbuVbGeaUxOjgEt
	NjdZz+0oYC2qYVRbiWDPmtTYnKa/7y+JvYyLPIn5AfsAA+3bTZhNacqRezBlu2693pO4IagSteGxg
	nNCshR3NSkEJ6IKeIDFxtVFtSahqnu6GLdAZibmG9KemkIGmsVlntmmrSGR9/NuqeN7gAN1axARRA
	PMT/m+fZH3W6Z1SaHlBjQRPvoaIkPfVy7MJJVYGDijUGB6Go7uU/3uJdQ/l1ZunmAYL7HuD1oUlc3
	tzGp6p7w0j2VYpw3mkbBO9wn6vwwVcE2aHcHM8nLEJ5Qdw5l0wDKmQhOZbNqp2rOOth1eDRb97xg4
	fvGM5HXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsfw-0005BE-4P; Fri, 27 Mar 2020 17:21:44 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHse7-0002sF-0t
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 17:19:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id t7so12290293wrw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 10:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=e7d/MiY+Am1dQA8qD50EyJqM0bO753jOUdN3UxYV6lY=;
 b=MGsWVGDw9oJRYCLOMnN1qSi0yIzAaEHReIFODZuWbpxVRSlPoIL0QbE3wcnFOe6yzZ
 FF0MRCT43oA8i58c/LXtn8HBBw/NdaKBPfNoYHvamQkdfO/gzPSEVQphpSMKQcoJBEPV
 JJPbJJDwPOKjnMYgj4bvgkvCiF9z9Y9n7vV+KtCPLzobDK2wXGJ/VabG9g6rKeLkPBhN
 dceX7XL+k3efpG++uklNRHQZfnh0jbpFJhbmjRCMjS+30pv+uJZc8ODfAbkJ8o7fXvoZ
 Y3Sg0pxgeXj1O4QCtn+hEovdq1Yq5xEdC0i1X5Nv8Px/Hwgib3me6vhBLhU3tLbwV7FI
 ygqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=e7d/MiY+Am1dQA8qD50EyJqM0bO753jOUdN3UxYV6lY=;
 b=foLS0yN3xl8LE7uHJ+c2cwRgMq5RL3Sy9ayZejmi7aXNp0SBXD8IHXkCQdvwKZkK3h
 M19nbq2150C6MxdwYd46775p7bxMSPQsbwxiWikKwo/F+lA2KVLAh80AMOTn9eD3kUgX
 biwJcZe7wGNpO24L4ZbGc6SRoeUeoME/p7sy8Lv/fFNbYng+GxoeMUyZGRWh0vCb03u4
 BsPgy0BlgNrMjMVpXAd27ruAM/n4i0RqfATUtlJHyH5/kQdUyhSWTjtc3UAQt6N9/7/5
 UgwHBqgvJnxfODrA4o69cpwRYhKI23D1Ajpmi3B75A5J4n9ZA/9Ge3MU+fSAYox50Nii
 1qyQ==
X-Gm-Message-State: ANhLgQ0xt/yVdr6uwuU51M9drEDl3SsL2M+EzQSROV1u0rfroamrK+9K
 0NgGohTeAKRwW1hKKQGD3ebMjA==
X-Google-Smtp-Source: ADFU+vtoR2JbFrN0nfJxqDYLP+xTflEVq5wNUz/jOry5OWPekgyUroWOpJkr2awpIEctqkOBklBL7A==
X-Received: by 2002:adf:e345:: with SMTP id n5mr490914wrj.220.1585329589373;
 Fri, 27 Mar 2020 10:19:49 -0700 (PDT)
Received: from zen.linaroharston ([51.148.130.216])
 by smtp.gmail.com with ESMTPSA id s11sm9434973wrw.58.2020.03.27.10.19.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 10:19:47 -0700 (PDT)
Received: from zen (localhost [127.0.0.1])
 by zen.linaroharston (Postfix) with ESMTP id 3794A1FF7E;
 Fri, 27 Mar 2020 17:19:47 +0000 (GMT)
References: <20200227113735.23605-1-peter.hilber@opensynergy.com>
 <20200317192053.15665-1-peter.hilber@opensynergy.com>
User-agent: mu4e 1.3.10; emacs 28.0.50
From: Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>
To: Peter Hilber <peter.hilber@opensynergy.com>
Subject: Re: [virtio-dev] [PATCH v3] Add virtio SCMI device specification
In-reply-to: <20200317192053.15665-1-peter.hilber@opensynergy.com>
Date: Fri, 27 Mar 2020 17:19:47 +0000
Message-ID: <87369tn2a4.fsf@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_101951_653518_83C16E8C 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
YW5kIGNvLXByb2Nlc3NvcnMgbmVlZCBhY2Nlc3MgdG8KPiB0aGVzZSByZXNvdXJjZXMuCj4KPiBU
aGUgdmlydGlvIHRyYW5zcG9ydCBhbGxvd3MgbWFraW5nIHVzZSBvZiB0aGlzIHByb3RvY29sIGlu
IHZpcnR1YWxpemVkCj4gc3lzdGVtcy4KPgo+IFsxXSBodHRwczovL2RldmVsb3Blci5hcm0uY29t
L2RvY3MvZGVuMDA1Ni9iCj4KPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBIaWxiZXIgPHBldGVyLmhp
bGJlckBvcGVuc3luZXJneS5jb20+CjxzbmlwPgo+ICsKPiArXHN1YnN1YnNlY3Rpb257U2hhcmVk
IE1lbW9yeSBPcGVyYXRpb259Cj4gKwo+ICtWYXJpb3VzIFNDTUkgcHJvdG9jb2xzIGRlZmluZSBz
dGF0aXN0aWNzIHNoYXJlZCBtZW1vcnkgcmVnaW9ucyAoZm9yCj4gK3N0YXRpc3RpY3MgYW5kIHNl
bnNvciB2YWx1ZXMpLgo+ICsKPiArXGRldmljZW5vcm1hdGl2ZXtccGFyYWdyYXBofXtTaGFyZWQg
TWVtb3J5IE9wZXJhdGlvbn17RGV2aWNlIFR5cGVzIC8gU0NNSSBEZXZpY2UgLyBEZXZpY2UgT3Bl
cmF0aW9uIC8gU2hhcmVkIE1lbW9yeSBPcGVyYXRpb259Cj4gKwo+ICtJZiBWSVJUSU9fU0NNSV9G
X1NIQVJFRF9NRU1PUlkgd2FzIG5lZ290aWF0ZWQsIHRoZSBkZXZpY2UgTUFZIGltcGxlbWVudAo+
ICthbiBTQ01JIHN0YXRpc3RpY3Mgc2hhcmVkIG1lbW9yeSByZWdpb24gdXNpbmcgYSB2aXJ0aW8g
c2hhcmVkIG1lbW9yeQo+ICtyZWdpb24uCgpBRkFJQ1QgdGhpcyBpcyB0aGUgZmlyc3QgdXNhZ2Ug
b2Ygc2htaWQgaW4gdGhlIHZpcnRpbyBzcGVjIHNvIEkgaGF2ZQpzb21lIHF1ZXN0aW9ucy4gVGhl
IHNwZWMgc2F5czoKCiAgTWVtb3J5IGNvbnNpc3RlbmN5IHJ1bGVzIHZhcnkgZGVwZW5kaW5nIG9u
IHRoZSByZWdpb24gYW5kIHRoZSBkZXZpY2UKICBhbmQgdGhleSB3aWxsIGJlIHNwZWNpZmllZCBh
cyByZXF1aXJlZCBieSBlYWNoIGRldmljZS4KClNvIHdoYXQgYXJlIHRoZSBydWxlcyBmb3IgbWVt
b3J5IGNvbnNpc3RlbmN5IGZvciB0aGVzZSByZWdpb25zOgoKICAtIGFyZSB0aGV5IHJlYWQtb25s
eSB3LnIudCB0aGUgZ3Vlc3Q/IChtYXliZSB0aGlzIGlzIGltcGxpY2l0PykKICAtIGhvdyBkb2Vz
IHRoZSBndWVzdCBrbm93IHdoZW4gdGhleSBoYXZlIGJlZW4gdXBkYXRlZD8KICAtIGhvdyBnb2Vz
IHRoZSBndWVzdCBrbm93IGl0IGhhc24ndCByZWFkIGEgdmFsdWUgbWlkLXVwZGF0ZT8KCj4gKwo+
ICtJZiB0aGUgZGV2aWNlIGltcGxlbWVudHMgYSBzaGFyZWQgbWVtb3J5IHJlZ2lvbiwgdGhlIGRl
dmljZSBNVVNUIGFzc2lnbgo+ICt0aGUgY29ycmVzcG9uZGluZyBzaG1pZCBhcyBwZXIgdGhlIGZv
bGxvd2luZyB0YWJsZToKPiArCj4gK1xiZWdpbnt0YWJ1bGFyfXt8bHxsfH0KPiArXGhsaW5lCj4g
K1NDTUkgc3RhdGlzdGljcyBzaGFyZWQgbWVtb3J5IHJlZ2lvbiAmIFZpcnRpbyBzaG1pZCBcXAo+
ICtcaGxpbmUgXGhsaW5lCj4gK1Bvd2VyIHN0YXRlIHN0YXRpc3RpY3Mgc2hhcmVkIG1lbW9yeSBy
ZWdpb24gJiAxIFxcCj4gK1xobGluZQo+ICtQZXJmb3JtYW5jZSBkb21haW4gc3RhdGlzdGljcyBz
aGFyZWQgbWVtb3J5IHJlZ2lvbiAmIDIgXFwKPiArXGhsaW5lCj4gK1NlbnNvciBWYWx1ZXMgU2hh
cmVkIE1lbW9yeSAmIDMgXFwKPiArXGhsaW5lCj4gK1Jlc2VydmVkIGZvciBmdXR1cmUgdXNlICYg
NCB0byAweDdGIFxcCj4gK1xobGluZQo+ICtWZW5kb3Itc3BlY2lmaWMgc3RhdGlzdGljcyBzaGFy
ZWQgbWVtb3J5IHJlZ2lvbnMgJiAweDgwIHRvIDB4RkYgXFwKPiArXGhsaW5lCj4gK1Jlc2VydmVk
IGZvciBmdXR1cmUgdXNlICYgMHgxMDAgYW5kIGdyZWF0ZXIgXFwKPiArXGhsaW5lCj4gK1xlbmR7
dGFidWxhcn0KCgotLSAKQWxleCBCZW5uw6llCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
