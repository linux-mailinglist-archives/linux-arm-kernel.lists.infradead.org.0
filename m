Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA83C6363B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z51udvbPHmVrHpKrwuaT6kzTAajVqPgAcj9Chm51uns=; b=FB+x1XUZ5Yu9no
	f2LJERi4QUmOORcY3Mxx72FxLcsByJtnRtgr6/aeLeAzb9JjGuEGrmoNoIOEq8IJXkB1RFaVTKskO
	/+pLs9+5BitYwdSsNRDIgNvetvqf83k1/H5gRZ8d00C444OcV5KNJV1vmdTeXveLT7RA99dqRDPfH
	ocv8yVfXMMxW0hgPHZrpqUDX8qJ760GoEgRaInzby8QC95VYRPynRSabKHJavYRcmp4VZJIscNNAu
	9u41TmG0lXlTisCXuorGz7oP/mm4hC2apohTcTv7qTYaB7uJvcSr+KuU8/jzOOHuwA9Q6+DYpiBzM
	bmZMEd8br9oMzFEIR9wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpbl-0003yN-AW; Tue, 09 Jul 2019 12:52:33 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpbZ-0003xm-L6
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:52:22 +0000
Received: by mail-qk1-x742.google.com with SMTP id s22so15870784qkj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 05:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=z8kNI881bPk48iQ1KRVTl0sXKkuyk/dxjSsIQFxaR8o=;
 b=E0e0ZIuEOatfHsh7mOJFiZl1I6rwVWxMVBR7/NP4v7/YzUMirQOcByvAHvg2T0kjXl
 VwE1HxqsblS7HwY/UtGp0m//pupC6TMCRZl2XI5xNvQGm/UfVz+R5OfvODRwLcV/HPTw
 3tnkuXGYjq6WfNB2kWqDnKnu0h8haGjl68eaL3kClCGwtKbPo24PYO7rnnjyVZV98G6G
 0Dom35EfORV1x1R7hGcOUM9gqD8MbpqncHi9NaLUSwTA1fuWVEZWf0Jpohz97vFKcnuQ
 Ra6z0d5JvZ4w8tRlVNDfByvvbYbnrxRDJb2DFj5K2FdzU+7DKeSL98HEk0MRjHWo9JEd
 68lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=z8kNI881bPk48iQ1KRVTl0sXKkuyk/dxjSsIQFxaR8o=;
 b=dJYTKaS/DBCQoPj97i4qjJbXstwmcbrnvxe76vApQt3Od2/X/M+X2cr5AV0URkae4b
 vi+BX65EOo3Y+Eyfbf9XVKslXXFguchPqWuWVaBraSifqFlDyaV/lxU2Y7cGP7uJZXU6
 p5v06HQU2F8UMjrkfJV7qqcECmfikw4Vt4GSKA5III4WQ2e/2dTKqA+U1kKQfYR/O1U9
 yppgQQWwBTtHtuvSEeIsoNpqH7NStzfiRq8wXH1NsaQ3SQOw5TPft9sWqQdwYMZP1mNl
 +BkeiQy42EMODmeTgwssg9njQkrFI1h9TpXUPmPe3q6slLA0DoAC+kA94BOIwc5EVhOf
 +ehg==
X-Gm-Message-State: APjAAAUm6/lmzUo6tzbcT2Z16vdL8F6ZX9iHjOpJlCYFrnZC60W7DC5l
 tQR5vebcoNORKa7VAwreulw=
X-Google-Smtp-Source: APXvYqyHA5/Lol3yKNF2g17z/amMymzBG8mlvk2cI4jGu5NI2rCkAbu+/C+mLJhVZoKdUzWek1dpbA==
X-Received: by 2002:a37:a7d2:: with SMTP id
 q201mr18019316qke.150.1562676740061; 
 Tue, 09 Jul 2019 05:52:20 -0700 (PDT)
Received: from [192.168.2.145] (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.googlemail.com with ESMTPSA id t6sm8836329qkh.129.2019.07.09.05.52.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 05:52:17 -0700 (PDT)
Subject: Re: [PATCH v5 05/12] drm/modes: Rewrite the command line parser
To: Maxime Ripard <maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
 <e32cd4009153b184103554009135c7bf7c9975d7.1560783090.git-series.maxime.ripard@bootlin.com>
 <e1fcea71-b551-274e-4ea0-178bb0d5f71c@gmail.com>
 <20190709124526.36szuriteq3jumhr@flea>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <41d24675-10df-5531-f4ee-4d801e2e4faf@gmail.com>
Date: Tue, 9 Jul 2019 15:52:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190709124526.36szuriteq3jumhr@flea>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_055221_695233_330FBD7D 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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

MDkuMDcuMjAxOSAxNTo0NSwgTWF4aW1lIFJpcGFyZCDQv9C40YjQtdGCOgo+IEhpLAo+IAo+IE9u
IEZyaSwgSnVsIDA1LCAyMDE5IGF0IDA3OjU0OjQ3UE0gKzAzMDAsIERtaXRyeSBPc2lwZW5rbyB3
cm90ZToKPj4gMTcuMDYuMjAxOSAxNzo1MSwgTWF4aW1lIFJpcGFyZCDQv9C40YjQtdGCOgo+Pj4g
RnJvbTogTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBmcmVlLWVsZWN0cm9ucy5jb20+Cj4+
Pgo+Pj4gUmV3cml0ZSB0aGUgY29tbWFuZCBsaW5lIHBhcnNlciBpbiBvcmRlciB0byBnZXQgYXdh
eSBmcm9tIHRoZSBzdGF0ZSBtYWNoaW5lCj4+PiBwYXJzaW5nIHRoZSB2aWRlbyBtb2RlIGxpbmVz
Lgo+Pj4KPj4+IEhvcGVmdWxseSwgdGhpcyB3aWxsIGFsbG93IHRvIGV4dGVuZCBpdCBtb3JlIGVh
c2lseSB0byBzdXBwb3J0IG5hbWVkIG1vZGVzCj4+PiBhbmQgLyBvciBwcm9wZXJ0aWVzIHNldCBk
aXJlY3RseSBvbiB0aGUgY29tbWFuZCBsaW5lLgo+Pj4KPj4+IFJldmlld2VkLWJ5OiBOb3JhbGYg
VHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KPj4+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBS
aXBhcmQgPG1heGltZS5yaXBhcmRAZnJlZS1lbGVjdHJvbnMuY29tPgo+Pj4gLS0tCj4+PiAgZHJp
dmVycy9ncHUvZHJtL2RybV9tb2Rlcy5jIHwgMzI1ICsrKysrKysrKysrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0KPj4+ICAxIGZpbGUgY2hhbmdlZCwgMjEwIGluc2VydGlvbnMoKyksIDExNSBk
ZWxldGlvbnMoLSkKPj4KPj4gSSBoYXZlIGEgVGVncmEgZGV2aWNlIHRoYXQgdXNlcyBhIHN0b2Nr
IGFuZHJvaWQgYm9vdGxvYWRlciB3aGljaAo+PiBwYXNzZXMgInZpZGVvPXRlZ3JhZmIiIGluIHRo
ZSBrZXJuZWxzIGNtZGxpbmUuIFRoYXQgd2Fzbid0IGEgcHJvYmxlbQo+PiBiZWZvcmUgdGhpcyBw
YXRjaCwgYnV0IG5vdyBUZWdyYSBEUk0gZHJpdmVyIGZhaWxzIHRvIHByb2JlIGJlY2F1c2UKPj4g
dGhlIG1vZGUgaXMgMHgwOjAgYW5kIGhlbmNlIGZyYW1lYnVmZmVyIGFsbG9jYXRpb24gZmFpbHMu
IElzIGl0IGEKPj4gbGVnaXQgcmVncmVzc2lvbiB0aGF0IHNob3VsZCBiZSBmaXhlZCBpbiB1cHN0
cmVhbT8KPiAKPiBUaGllcnJ5IGluZGVlZCByZXBvcnRlZCB0aGF0IGlzc3VlLCBidXQgdGhlIGRp
c2N1c3Npb24gcHJldHR5IG11Y2gKPiBzdGFsbGVkIHNpbmNlIHRoZW4uCgpTb3JyeSwgdGhpcyBk
b2Vzbid0IGFuc3dlciBteSBxdWVzdGlvbi4gV2hlcmUgaXQgd2FzIHJlcG9ydGVkPwoKSWYgaXQn
cyBhIHZhbGlkIHJlZ3Jlc3Npb24gKG15IGRldmljZSBpcyBicm9rZW4pLCB0aGVuIHRoZSBwYXRj
aCBzaG91bGQgZWl0aGVyIGJlIGZpeGVkIG9yCnJldmVydGVkLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
