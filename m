Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 952D11F38EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XUw5f/pcx9G6X6pg4V4zNzicx0d7HEYWUTYXJRVC0vs=; b=UExfP+npGGqa+m
	RiH6bvDSkXnx48YiWI7DebHc6DP7um21BBOtDzvG8E9Pa0UdUv+FpKWA3WAllKpOU94h/LtKRs5fI
	deVHm23OCBgGi87yhk/jgvtuu089PhW9aZrCJ3LokhlsK0Wo2OvxLVUqF7DC6IVXPAUn5Prn5CxTl
	GtQPd2S2n41q1Nrpt4V7SgyGvvuLGOB7eDwsZ4XdcJ7YTthyxlSHN/dQZ4sReC2LnSbhc2T0CpCg0
	4OUe8q9UmBaAH0pfmpfyL4uYM4HJdcyZ11vLRysn2d2Td+wYJr70EIpJlDDCNB0acQXQVtWncOhnr
	H1AW/5vfAyPeH/uqM7GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jic0v-0004jc-31; Tue, 09 Jun 2020 11:01:53 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jic0o-0004iZ-0L
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:01:47 +0000
Received: by mail-wr1-x434.google.com with SMTP id j10so20788041wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 04:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding;
 bh=iB53fyHzOurV8WdYm7waEB55kXvEexrCk4tRbKxo6YI=;
 b=edsSdQ4QUBpCuB6ZPxpjxCtDs5OUBve70dB4X0lVcjkKYwBmqZTB3bftQdMdiKXNrx
 wwFVVppfJOChLOr/f53rT5T2krx/Uhjjymd9BP5jhTkVFLmVKnnNhxygJCDOJlTKmvUO
 LNk9TQ9qkJGQwcHjLG423MfiCBjALXoUGO9MSv/FGHO3AH4hJLlEeFTlrVJK3eP5vwyP
 WVw6nLwQjJsdur3OniBYIrNl9VZ2OVVMBINsgPWWSHvZuXJEkl4Eo+uUsjiLoQXqHO7e
 LGDpTWKsiltd77WdjxD+zqK3YFh4lOxyPt9tj1QKnCnjhHFmTPhiEPJ/3TIkunDx1j2q
 RaNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding;
 bh=iB53fyHzOurV8WdYm7waEB55kXvEexrCk4tRbKxo6YI=;
 b=ow2QQe1Nqob5msQdkGpchj7n832lfZSMy8dXan8PB/I2v3SmPqyhPmsKu/4rEYgoix
 nl+v1SR0/ge5sIhT/mXSr+XmPFkq3rds3GI/AHd8vGuSVF+X45L91xqFNLqgzvvJQ/Ts
 L9dW3hQoNiHj1jK6faTnj9SPcnWk2W2OSyF4S55ftug3sVXbQkJ8hbz4xwigw1/vknEB
 b9Mp8Y4ESgNKmV+YDj7MpWWrugBQCFksLqCVDoZbHu+2wD+hPJyfOlCHEPHYrmuSVays
 rWz4oJ4gD5rYoWrE93JFwYaWuIxLjlBxf7gDNbKnLSNy+YmqKT0ydBFNlrKfZybcIvO9
 q1tg==
X-Gm-Message-State: AOAM530aEXfc8EJiF2OsX4/ykWDmAVhtAGu++YbclDGCtlgpWLM4G4BH
 WOY/76uIs2jX0fRT9SltySrD4Q==
X-Google-Smtp-Source: ABdhPJxUCvhfV5sICUWSHzMa0DDaIudbYgwZyo/QOT3BfQ+SWUwccYk1omI3D7D2PB+sN+Y9A0ZMjg==
X-Received: by 2002:a5d:6144:: with SMTP id y4mr3917686wrt.185.1591700499422; 
 Tue, 09 Jun 2020 04:01:39 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id y66sm2578230wmy.24.2020.06.09.04.01.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 04:01:37 -0700 (PDT)
Date: Tue, 9 Jun 2020 12:01:36 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>,
 GregKroah-Hartmangregkh@linuxfoundation.org
Subject: [RFC] MFD's relationship with Device Tree (OF)
Message-ID: <20200609110136.GJ4106@dell>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_040146_051599_6FB3FCB5 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

R29vZCBtb3JuaW5nLAoKQWZ0ZXIgYSBudW1iZXIgb2YgcmVwb3J0cy9xdWVyaWVzIHN1cnJvdW5k
aW5nIGEga25vd24gbG9uZy10ZXJtIGlzc3VlCmluIHRoZSBNRkQgY29yZSwgaW5jbHVkaW5nIHRo
ZSBzdWJtaXNzaW9uIG9mIGEgY291cGxlIG9mIGF0dGVtcHRlZApzb2x1dGlvbnMsIEkndmUgZGVj
aWRlZCB0byBmaW5hbGx5IHRhY2tsZSB0aGlzIG9uZSBteXNlbGYuCgpDdXJyZW50bHksIHdoZW4g
YSBjaGlsZCBwbGF0Zm9ybSBkZXZpY2UgKHNvbWV0aW1lcyByZWZlcnJlZCB0byBhcyBhCnN1Yi1k
ZXZpY2UpIGlzIHJlZ2lzdGVyZWQgdmlhIHRoZSBNdWx0aS1GdW5jdGlvbmFsIERldmljZSAoTUZE
KSBBUEksCnRoZSBmcmFtZXdvcmsgYXR0ZW1wdHMgdG8gbWF0Y2ggdGhlIG5ld2x5IHJlZ2lzdGVy
ZWQgcGxhdGZvcm0gZGV2aWNlCndpdGggaXRzIGFzc29jaWF0ZWQgRGV2aWNlIFRyZWUgKE9GKSBu
b2RlLiAgVW50aWwgbm93LCB0aGUgZGV2aWNlIGhhcwpiZWVuIGFsbG9jYXRlZCB0aGUgZmlyc3Qg
bm9kZSBmb3VuZCB3aXRoIGFuIGlkZW50aWNhbCBPRiBjb21wYXRpYmxlCnN0cmluZy4gIFVuZm9y
dHVuYXRlbHksIGlmIHRoZXJlIGFyZSwgc2F5IGZvciBleGFtcGxlICczJyBkZXZpY2VzCndoaWNo
IGFyZSB0byBiZSBoYW5kbGVkIGJ5IHRoZSBzYW1lIGRyaXZlciBhbmQgdGhlcmVmb3JlIGhhdmUg
dGhlIHNhbWUKY29tcGF0aWJsZSBzdHJpbmcsIGVhY2ggb2YgdGhlbSB3aWxsIGJlIGFsbG9jYXRl
ZCBhIHBvaW50ZXIgdG8gdGhlCipmaXJzdCogbm9kZS4KCkxldCBtZSBnaXZlIHlvdSBhbiBleGFt
cGxlLgoKSSBoYXZlIGtub2NrZWQgdXAgYW4gZXhhbXBsZSAncGFyZW50JyBhbmQgJ2NoaWxkJyBk
ZXZpY2UgZHJpdmVyLiAgVGhlCnBhcmVudCB1dGlsaXNlcyB0aGUgTUZEIEFQSSB0byByZWdpc3Rl
ciAzIGlkZW50aWNhbCBjaGlsZHJlbiwgZWFjaApjb250cm9sbGVkIGJ5IHRoZSBzYW1lIGRyaXZl
ci4gIFRoaXMgaGFwcGVucyBhIGxvdC4gIEZvcnR1bmF0ZWx5LCBpbgp0aGUgbWFqb3JpdHkgb2Yg
Y2FzZXMsIHRoZSBPRiBub2RlcyBhcmUgYWxzbyB0b3RhbGx5IGlkZW50aWNhbCwgYnV0CndoYXQg
aWYgeW91IHdpc2ggdG8gY29uZmlndXJlIG9uZSBvZiB0aGUgY2hpbGQgZGV2aWNlcyB3aXRoIGRp
ZmZlcmVudAphdHRyaWJ1dGVzIG9yIHJlc291cmNlcyBzdXBwbGllZCB2aWEgRGV2aWNlIFRyZWUs
IGxpa2UgYSBjbG9jaz8gIFRoaXMKaXMgY3VycmVudGx5IGltcG9zc2libGUuCgpIZXJlIGlzIHRo
ZSBEZXZpY2UgVHJlZSByZXByZXNlbnRhdGlvbiBmb3IgdGhlIDEgcGFyZW50IGFuZCB0aGUgMwpj
aGlsZCAoc3ViKSBkZXZpY2VzIGRlc2NyaWJlZCBhYm92ZToKCiAgICAgICAgcGFyZW50IHsKICAg
ICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibWZkLG9mLXRlc3QtcGFyZW50IjsKCiAgICAgICAg
ICAgICAgICBjaGlsZEAwIHsKICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJt
ZmQsb2YtdGVzdC1jaGlsZCI7CgkJCWNsb2NrcyA9IDwmY2xvY2sgMD47CiAgICAgICAgICAgICAg
ICB9OwoKICAgICAgICAgICAgICAgIGNoaWxkQDEgewogICAgICAgICAgICAgICAgICAgICAgICBj
b21wYXRpYmxlID0gIm1mZCxvZi10ZXN0LWNoaWxkIjsKCQkJY2xvY2tzID0gPCZjbG9jayAxPjsK
CQl9OwoKCSAgICAgICAgY2hpbGRAMiB7CiAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGli
bGUgPSAibWZkLG9mLXRlc3QtY2hpbGQiOwoJCQljbG9ja3MgPSA8JmNsb2NrIDI+OwogICAgICAg
ICAgICAgICAgfTsKICAgICAgICB9OwoKVGhpcyBpcyBob3cgd2UgcmVnaXN0ZXIgdGhvc2UgZGV2
aWNlcyBmcm9tIE1GRDoKCnN0YXRpYyBjb25zdCBzdHJ1Y3QgbWZkX2NlbGwgbWZkX29mX3Rlc3Rf
Y2VsbFtdID0gewogICAgICAgIE9GX01GRF9DRUxMKCJtZmRfb2ZfdGVzdF9jaGlsZCIsIE5VTEws
IE5VTEwsIDAsIDAsICJtZmQsb2YtdGVzdC1jaGlsZCIpLAogICAgICAgIE9GX01GRF9DRUxMKCJt
ZmRfb2ZfdGVzdF9jaGlsZCIsIE5VTEwsIE5VTEwsIDAsIDEsICJtZmQsb2YtdGVzdC1jaGlsZCIp
LAoJT0ZfTUZEX0NFTEwoIm1mZF9vZl90ZXN0X2NoaWxkIiwgTlVMTCwgTlVMTCwgMCwgMiwgIm1m
ZCxvZi10ZXN0LWNoaWxkIikKfTsKCi4uLiB3aGljaCB3ZSBwYXNzIGludG8gbWZkX2FkZF9kZXZp
Y2VzKCkgZm9yIHByb2Nlc3NpbmcuCgpJbiBhbiBpZGVhbCB3b3JsZC4gIFRoZSBkZXZpY2VzIHdp
dGggdGhlIHBsYXRmb3JtX2lkOyAwLCAxIGFuZCAyIHdvdWxkCmJlIG1hdGNoZWQgdXAgdG8gRGV2
aWNlIFRyZWUgbm9kZXM7IGNoaWxkQDAsIGNoaWxkQDEgYW5kIGNoaWxkQDIKcmVzcGVjdGl2ZWx5
LiAgSW5zdGVhZCBhbGwgMyBkZXZpY2VzIHdpbGwgYmUgYWxsb2NhdGVkIGEgcG9pbnRlciB0bwpj
aGlsZEAwJ3MgT0Ygbm9kZSwgd2hpY2ggaXMgb2J2aW91c2x5IG5vdCBjb3JyZWN0LgoKVGhpcyBp
cyBob3cgaXQgbG9va3Mgd2hlbiBlYWNoIG9mIHRoZSBjaGlsZCBkZXZpY2VzIGFyZSBwcm9iZWQ6
CgogWzAuNzA4Mjg3XSBtZmQtb2YtdGVzdC1wYXJlbnQgbWZkX29mX3Rlc3Q6IFJlZ2lzdGVyaW5n
IDMgZGV2aWNlcwogWy4uLl0KIFswLjcxMjUxMV0gbWZkLW9mLXRlc3QtY2hpbGQgbWZkX29mX3Rl
c3RfY2hpbGQuMDogUHJvYmluZyBwbGF0Zm9ybSBkZXZpY2U6IDAKIFswLjcxMjcxMF0gbWZkLW9m
LXRlc3QtY2hpbGQgbWZkX29mX3Rlc3RfY2hpbGQuMDogVXNpbmcgT0Ygbm9kZTogY2hpbGRAMAog
WzAuNzEzMDMzXSBtZmQtb2YtdGVzdC1jaGlsZCBtZmRfb2ZfdGVzdF9jaGlsZC4xOiBQcm9iaW5n
IHBsYXRmb3JtIGRldmljZTogMQogWzAuNzEzMzgxXSBtZmQtb2YtdGVzdC1jaGlsZCBtZmRfb2Zf
dGVzdF9jaGlsZC4xOiBVc2luZyBPRiBub2RlOiBjaGlsZEAwCiBbMC43MTM2OTFdIG1mZC1vZi10
ZXN0LWNoaWxkIG1mZF9vZl90ZXN0X2NoaWxkLjI6IFByb2JpbmcgcGxhdGZvcm0gZGV2aWNlOiAy
CiBbMC43MTM4ODldIG1mZC1vZi10ZXN0LWNoaWxkIG1mZF9vZl90ZXN0X2NoaWxkLjI6IFVzaW5n
IE9GIG5vZGU6IGNoaWxkQDAKCiJXaHkgaXMgaXQgd2hlbiBJIGNoYW5nZSBjaGlsZCAyJ3MgY2xv
Y2sgcmF0ZSwgaXQgYWxzbyBjaGFuZ2VzIDAncz8iCgpXaG9vcHMhCgpTbyBpbiBvcmRlciB0byBm
aXggdGhpcywgd2UgbmVlZCB0byBtYWtlIE1GRCBtb3JlLWNsZXZlcmVyIQoKSG93ZXZlciwgdGhp
cyBpcyBub3Qgc28gc2ltcGxlLiAgVGhlcmUgYXJlIHNvbWUgcnVsZXMgd2Ugc2hvdWxkIGFiaWRl
CmJ5IChJIHVzZSAic2hvdWxkIiBpbnRlbnRpb25hbGx5IGhlcmUsIGFzIHNvbWV0aGluZyBtaWdo
dCBqdXN0IGhhdmUgdG8KZ2l2ZSk6CgogYSkgU2luY2UgRGV2aWNlIFRyZWUgaXMgZGVzaWduZWQg
dG8gZGVzY3JpYmUgaGFyZHdhcmUsIGluc2VydGluZwogICAgYXJiaXRyYXJ5IHByb3BlcnRpZXMg
aW50byBEVCBpcyBmb3JiaWRkZW4uICBUaGlzIHByZWNsdWRlcyB0aGluZ3MKICAgIHdlIHdvdWxk
IG9yZGluYXJpbHkgYmUgYWJsZSB0byBtYXRjaCBvbiwgbGlrZSAnaWQnIG9yICduYW1lJy4KIGIp
IEFzIGFuIGV4dGVuc2lvbiB0byBhKSBEVHMgc2hvdWxkIGFsc28gYmUgT1MgYWdub3N0aWMsIHNv
CiAgICBwcm9wZXJ0aWVzIGxpa2UgJ21mZC1kZXZpY2UnLCAnbWZkLW9yZGVyJyBldGMgYXJlIGFs
c28gbm90CiAgICBub3Qgc3VpdGFibGUgZm9yIGluY2x1c2lvbi4KIGMpIFRoZSBmaW5hbCBzb2x1
dGlvbiBzaG91bGQgaWRlYWxseSBiZSBjYXBhYmxlIG9mIHN1cHBvcnRpbmcgYm90aAogICAgbmV3
bHkgZGVmaW5lZCBhbmQgY3VycmVudCB0cmVlcyAod2l0aG91dCByZXRyb2FjdGl2ZSBlZGl0cykK
ICAgIGFsaWtlLgogZCkgRXhpc3RpbmcgcHJvcGVydGllcyBjb3VsZCBiZSB1c2VkLCBidXQgbm90
IGFidXNlZC4gIEZvciBleGFtcGxlLAogICAgb25lIG9mIG15IHN1Z2dlc3Rpb25zIChzZWUgYmVs
b3cpIGlzIHRvIHVzZSB0aGUgJ3JlZycgcHJvcGVydHkuCiAgICBUaGlzIGlzIGZpbmUgaW4gcHJp
bmNpcGxlIGJ1dCBsb2FkaW5nICdyZWcnIHdpdGggYXJiaXRyYXJ5IHZhbHVlcwogICAgKHN1Y2gg
YXM7IDAsIDEsIDIgLi4uIHgpIHdoaWNoIDEpIGNsZWFybHkgZG8gbm90IGhhdmUgYW55dGhpbmcg
dG8KICAgIGRvIHdpdGggcmVnaXN0ZXJzIGFuZCAyKSB3b3VsZCBiZSBtZWFuaW5nbGVzcyBpbiBv
dGhlciBPU2VzLwogICAgaW1wbGVtZW50YXRpb25zLCBqdXN0IHRvIHNlcnZlIG91ciBwdXJwb3Nl
LCBpcyB0byBiZSBpbnRlcnByZXRlZAogICAgYXMgYW4gYWJ1c2UuCgpQcm9wb3NhbCAxOgoKQXMg
bWVudGlvbmVkIGFib3ZlLCBteSBpbml0aWFsIHRob3VnaHRzIHdlcmUgdG8gdXNlIHRoZSAncmVn
JyBwcm9wZXJ0eQp0byBtYXRjaCBhbiBNRkQgY2VsbCBlbnRyeSB3aXRoIHRoZSBjb3JyZWN0IERU
IG5vZGUuICBIb3dldmVyLCBub3QKYWxsIERldmljZSBUcmVlIG5vZGVzIGhhdmUgJ3JlZycgcHJv
cGVydGllcy4gIFBhcnRpY3VsYXJseSB0cnVlIGluIHRoZQpjYXNlIG9mIE1GRCwgd2hlcmUgbWVt
b3J5IHJlc291cmNlcyBhcmUgdXN1YWxseSBzaGFyZWQgd2l0aCB0aGUgcGFyZW50CnZpYSBSZWdt
YXAsIG9yIChhcyBpbiB0aGUgY2FzZSBvZiB0aGUgYWI4NTAwKSB0aGUgTUZEIGhhbmRsZXMgYWxs
CnJlZ2lzdGVyIHRyYW5zYWN0aW9ucyB2aWEgaXRzIG93biBBUEkuIAoKUHJvcG9zYWwgMjoKCklm
IHdlIGNhbid0IGd1YXJhbnRlZSB0aGF0IGFsbCBEVCBub2RlcyB3aWxsIGhhdmUgYXQgbGVhc3Qg
b25lCnByb3BlcnR5IGluIGNvbW1vbiB0byBiZSB1c2VkIGZvciBtYXRjaGluZyBhbmQgd2UncmUg
cHJldmVudGVkIGZyb20Kc3VwcGx5aW5nIGFkZGl0aW9uYWwsIHBvdGVudGlhbGx5IGJlc3Bva2Ug
cHJvcGVydGllcywgdGhlbiB3ZSBtdXN0CnNlZWsgYW4gYWx0ZXJuYXRpdmUgcHJvY2VkdXJlLgoK
SXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvIG1hdGNoIGJhc2VkIG9uIG9yZGVyLiAgSG93ZXZlciwg
dGhlIGRldmVsb3Blcgp3b3VsZCBoYXZlIHRvIGd1YXJhbnRlZSB0aGF0IHRoZSBvcmRlciBpbiB3
aGljaCB0aGUgY2hpbGQgZGV2aWNlcyBhcmUKcHJlc2VudGVkIHRvIHRoZSBNRkQgQVBJIGFyZSBp
biBleGFjdGx5IHRoZSBzYW1lIG9yZGVyIGFzIHRoZXkgYXJlCnJlcHJlc2VudGVkIGluIHRoZSBE
ZXZpY2UgVHJlZS4gIFRoZSBvYnZpb3VzIGRyYXctYmFjayB0byB0aGlzCnN0cmF0ZWd5IGlzIHRo
YXQgaXQncyBwb3RlbnRpYWxseSB2ZXJ5IGZyYWdpbGUuCgpDdXJyZW50IFByb3Bvc2FsOgoKSG93
IGFib3V0IGEgY29sbGVjdGlvbiBvZiBQcm9wb3NhbCAxIGFuZCBQcm9wb3NhbCAyPyAgRmlyc3Qg
d2UgY291bGQKYXR0ZW1wdCBhIG1hdGNoIG9uIHRoZSAncmVnJyBwcm9wZXJ0eS4gIFRoZW4sIGlm
IHRoYXQgZmFpbHMsIHdlIHdvdWxkCnVzZSB0aGUgZnJhZ2lsZS1idXQtaXRzLWFsbC13ZS1oYXZl
IFByb3Bvc2FsIDIgYXMgdGhlIGZhbGwtYmFjay4KClRob3VnaHRzPwoKLS0gCkxlZSBKb25lcyBb
5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGlu
YXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5h
cm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
