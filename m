Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AC263723
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 15:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/js3XGoetBhblm6RfM8McCjvw/Nvs+8IHlaBKVeuin4=; b=T7TwJULecx0n1K
	ityMz7LNtK5ph7YG8PxOw+pqoMBSfmj+gCUXc7TG5mrutg3KjUlB0xeWGizsRMvkeo6gGGKKX2zHB
	iu1I3H/NJHOh7hnd8hpK4aUdHi2ABxKJrSmTCboFIDgVTjPq/Zxvf8qMTgDl+Pv0D5v3xELBlHwhe
	R3KRq+I7zlcdLM+zaU0H9Lwx4MKCUDCSZqNWxzJUmo5XUBlVAQDBo08L33Y/2YWpQOtsebvCJObpB
	pcDKzd+ZKnT1fvnaM6/UFoaqD927VOmR9LEvkP9j5tfRY+uPFkJ2qFosVV+KVzsAYwnFbwVA+/yKQ
	F54f7PBT4agxkCDb0MsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkqMG-0003oE-Ao; Tue, 09 Jul 2019 13:40:36 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkqM5-0003ns-8A
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 13:40:26 +0000
Received: by mail-qt1-x843.google.com with SMTP id z4so18175398qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 06:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tv27Rfc5F1/22AUNBd83Muk5qt7AIozrFwrcdJ4deqI=;
 b=idwO+/1lpeDv2O8VT9JEBvK3sh4MMw6hYiAwtDt7soAYVZf6w7ZyCm35uLyCJc0D+Q
 9GjQHiWRgIa4sbjrKa1VgP7OckOBF4qUQSjMR7FBa2rcUCS0EkWLCaHElqiZaGKgaXZg
 hAMI+Y5lDT2mhxHxLNVIAHD4EQl5lp914nTZ3CdRTPUsSeNqunWaKUVjZ4XJ2qYayi6L
 do+ylBKh0OIaT1u03hQZHtvoClwkU34gwce7raEQX9jmsE8mZYy6JPRmx5vbhShqR+fd
 48tZc2Afv5h++CMCq8XyU/hYzTfWmaPNiqdl/wvwRmg3Po5WYTfm73IheQtUPbJI+6F4
 wxZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tv27Rfc5F1/22AUNBd83Muk5qt7AIozrFwrcdJ4deqI=;
 b=DN7+zTfqAcWnc4CQGCVasWJm19bj3N3Z20LHbO9VD105ZB0LNXWNZLqXuirW+8g9kj
 SKFmq1M5wSEExT8g9H+CrFybj3vFAhl8vKLI3XfDayjPnSdhFHGcshc2TJvfIK7qVId6
 QpX1nY26hYpI1zFI1LcNx+Jduq/mr0mL2Sl6PIWS6ZfcNcNFjvZ9KYEwVLgi9AMz6yqj
 i73ps5lFz1bflPlWH4RvS+ngtssdvKRxN1frmTmVLWj2mHfMpkFdlvaZaShJqf/wIxDc
 suYlXQrJcJID7Nh7E6ZdNNytWjW0WG2AAEvpq1OHa+blEF1sae04o3b0k42MSY6Ap//Y
 Pv7g==
X-Gm-Message-State: APjAAAWP207Hwhg+JrwOYU9W80ZhvWyXbLEj7N8IFEVRYtpBvZEPC15M
 yRATjH0iqZJNM0/lmvrKBYPfxFA6
X-Google-Smtp-Source: APXvYqyqEPKTyK7MsdBTZXWVLR2v9cx+z96+o6uR4WVGZEPy3MHrbKX+InNCodsNZIL8lPzu8eIBjw==
X-Received: by 2002:aed:3f29:: with SMTP id p38mr18287931qtf.126.1562679623810; 
 Tue, 09 Jul 2019 06:40:23 -0700 (PDT)
Received: from [192.168.2.145] (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.googlemail.com with ESMTPSA id q2sm8537525qkc.118.2019.07.09.06.40.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 06:40:23 -0700 (PDT)
Subject: Re: [PATCH v5 05/12] drm/modes: Rewrite the command line parser
To: Jon Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
 <e32cd4009153b184103554009135c7bf7c9975d7.1560783090.git-series.maxime.ripard@bootlin.com>
 <e1fcea71-b551-274e-4ea0-178bb0d5f71c@gmail.com>
 <20190709124526.36szuriteq3jumhr@flea>
 <41d24675-10df-5531-f4ee-4d801e2e4faf@gmail.com>
 <918c4477-6d59-06a6-ead0-9b2fc3e1eb10@nvidia.com>
 <fbf926f0-dc9f-af8f-5365-1a67af8d5b60@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <763b0a94-0b64-c4fa-00a4-dba6b4247c73@gmail.com>
Date: Tue, 9 Jul 2019 16:40:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <fbf926f0-dc9f-af8f-5365-1a67af8d5b60@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_064025_295067_C6CFB139 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: eben@raspberrypi.org, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDcuMjAxOSAxNjoyOCwgSm9uIEh1bnRlciDQv9C40YjQtdGCOgo+IAo+IE9uIDA5LzA3LzIw
MTkgMTQ6MjYsIEpvbiBIdW50ZXIgd3JvdGU6Cj4+Cj4+IE9uIDA5LzA3LzIwMTkgMTM6NTIsIERt
aXRyeSBPc2lwZW5rbyB3cm90ZToKPj4+IDA5LjA3LjIwMTkgMTU6NDUsIE1heGltZSBSaXBhcmQg
0L/QuNGI0LXRgjoKPj4+PiBIaSwKPj4+Pgo+Pj4+IE9uIEZyaSwgSnVsIDA1LCAyMDE5IGF0IDA3
OjU0OjQ3UE0gKzAzMDAsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4+Pj4gMTcuMDYuMjAxOSAx
Nzo1MSwgTWF4aW1lIFJpcGFyZCDQv9C40YjQtdGCOgo+Pj4+Pj4gRnJvbTogTWF4aW1lIFJpcGFy
ZCA8bWF4aW1lLnJpcGFyZEBmcmVlLWVsZWN0cm9ucy5jb20+Cj4+Pj4+Pgo+Pj4+Pj4gUmV3cml0
ZSB0aGUgY29tbWFuZCBsaW5lIHBhcnNlciBpbiBvcmRlciB0byBnZXQgYXdheSBmcm9tIHRoZSBz
dGF0ZSBtYWNoaW5lCj4+Pj4+PiBwYXJzaW5nIHRoZSB2aWRlbyBtb2RlIGxpbmVzLgo+Pj4+Pj4K
Pj4+Pj4+IEhvcGVmdWxseSwgdGhpcyB3aWxsIGFsbG93IHRvIGV4dGVuZCBpdCBtb3JlIGVhc2ls
eSB0byBzdXBwb3J0IG5hbWVkIG1vZGVzCj4+Pj4+PiBhbmQgLyBvciBwcm9wZXJ0aWVzIHNldCBk
aXJlY3RseSBvbiB0aGUgY29tbWFuZCBsaW5lLgo+Pj4+Pj4KPj4+Pj4+IFJldmlld2VkLWJ5OiBO
b3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAZnJlZS1lbGVjdHJvbnMuY29tPgo+Pj4+Pj4g
LS0tCj4+Pj4+PiAgZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rlcy5jIHwgMzI1ICsrKysrKysrKysr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KPj4+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMjEwIGlu
c2VydGlvbnMoKyksIDExNSBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4gSSBoYXZlIGEgVGVncmEg
ZGV2aWNlIHRoYXQgdXNlcyBhIHN0b2NrIGFuZHJvaWQgYm9vdGxvYWRlciB3aGljaAo+Pj4+PiBw
YXNzZXMgInZpZGVvPXRlZ3JhZmIiIGluIHRoZSBrZXJuZWxzIGNtZGxpbmUuIFRoYXQgd2Fzbid0
IGEgcHJvYmxlbQo+Pj4+PiBiZWZvcmUgdGhpcyBwYXRjaCwgYnV0IG5vdyBUZWdyYSBEUk0gZHJp
dmVyIGZhaWxzIHRvIHByb2JlIGJlY2F1c2UKPj4+Pj4gdGhlIG1vZGUgaXMgMHgwOjAgYW5kIGhl
bmNlIGZyYW1lYnVmZmVyIGFsbG9jYXRpb24gZmFpbHMuIElzIGl0IGEKPj4+Pj4gbGVnaXQgcmVn
cmVzc2lvbiB0aGF0IHNob3VsZCBiZSBmaXhlZCBpbiB1cHN0cmVhbT8KPj4+Pgo+Pj4+IFRoaWVy
cnkgaW5kZWVkIHJlcG9ydGVkIHRoYXQgaXNzdWUsIGJ1dCB0aGUgZGlzY3Vzc2lvbiBwcmV0dHkg
bXVjaAo+Pj4+IHN0YWxsZWQgc2luY2UgdGhlbi4KPj4KPj4gWWVzIFRoaWVycnkgaXMgY3VycmVu
dGx5IG91dCBhbmQgaGVuY2UgaGFzIG5vdCByZXNwb25kZWQuIEkgaGFkIGJlZW4KPj4gcGxhbm5p
bmcgdG8gbG9vayBhdCB0aGlzIHRoaXMgd2VlayBhbmQgcmVzcG9uZGVkLgo+Pgo+Pj4gU29ycnks
IHRoaXMgZG9lc24ndCBhbnN3ZXIgbXkgcXVlc3Rpb24uIFdoZXJlIGl0IHdhcyByZXBvcnRlZD8K
Pj4KPj4gU2FtZSB0aHJlYWQgWzBdLgo+IAo+IENvcnJlY3Rpb24sIGl0IHdhcyBvbiBwYXRjaCA2
LzEyIGFuZCBub3QgdGhpcyBvbmUuCgpUaGFuayB5b3UgdmVyeSBtdWNoLCBKb24hIFNvIGxvb2tz
IGxpa2UgdGhpcyBwYXRjaCBpcyBzaW1wbHkgYnJva2VuIGJlY2F1c2UgaXQgc2lsZW50bHkKY29w
aWVzIHRoZSAibW9kZSdzIG5hbWUiIGFuZCB0aGVuIGRybV9jb25uZWN0b3JfZ2V0X2NtZGxpbmVf
bW9kZSgpIGRvZXNuJ3QgZXZlbiB0cnkgdG8KdmFsaWRhdGUgdGhlIG1vZGUuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
