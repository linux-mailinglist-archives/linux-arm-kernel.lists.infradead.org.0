Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF7E4B1D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 08:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Y/RQC2FwkkMv0XrGzAKMK90BZ0O8RLfXva8g9eqiOQ=; b=oCPifln+d6Sjqa
	GJl8HL8K3Wic1Lv8BfmJyd8/7RnEejUNW7Zd56Ngqr2FJKbCjRlPlhLAEeNVKvjLtZbKC8wvjdeFg
	gYajjshZ2w7CV/kKfni2fibTOf9e73nD8Tky+rw+8ovYm/teM0v0OWl24nZMCcD+xadhJDoMBgjOd
	9+55wAtOgq78U+k813PAr2wgZuhg7VTs7Bdcpb5U2TpgCrwcsdIsVZhWSO4K0HGDswDm91yVpkU0H
	49CYR6df7qRiwG7ny8vut1X5Ct04eEBQ2njexcxiZaKmU3S5KCGjupv1o3Dibw7xvLLV22bFdPXf3
	0Ur0bkv4WSfNdaXpXdVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdTjO-0000RD-Vf; Wed, 19 Jun 2019 06:06:02 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdTjD-0000Qa-Lq
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 06:05:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id s3so344330wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 23:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=gAuvNEON1/svyE5y5H38rhLBVdlEdqq6m64304VJxxs=;
 b=ZG5JbVEDRi1cEztR9JPWFYHH4s7iBIKyn45vzLAIoPXuizb+BCH+2XrkPjcbPH+1Ge
 cxejIXjDRzw9xLk+MnT9Zih7O2ENvIdCKSZiDYiW51dEI6MpvHstHy/nIbOL0QiMtuTX
 KogdXhG2DKT8In8hoZGJq/KEpY62ZH6MuYMvKrzmUHM4qxAN9s6yQ3UJnarzkakBYySQ
 tHt79MEzHGr/Uog534lU+QVR4htpUZqCBlkM95IoYurqq0tY7LhLQGkmQSP8wSOqHWuo
 bX3VmRDo5xrT5yc7eQqIo3N2WlUYb1rEokBD4QOEKdDAcyY8XSkIczKfymTMszhPZIxw
 lZfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=gAuvNEON1/svyE5y5H38rhLBVdlEdqq6m64304VJxxs=;
 b=Be95VRXsQMyUWBMrfNdYEIa4JMvHouhvhf4pL5d3R+SbhQAhUMoEH3+b4juNE8OvnU
 JaEc9krWAIyh16+D96r3EqZoW/9JmOb1O31GqAXBaYBc/3AshOfWQME5hzoaR+MpRAaE
 /f14858KtaGhPQ+fzbdqX6ELwaZWX7oyJj0ov/jYB3wvo6hyOk7s3k+nNUrzIDsh7+Nm
 wW8PcmrHa+uPtyXLMJCmhMy4EjcscXEiMH7cHVil8wdjgFkySflx9aAsFv/0fg7ukdPu
 8xpeiyJnAFZq931p1SOnJG+x70yoC+Vm4hzrxdmpkkgoHfqj7/4bBZAG58FoEGMI4uq9
 MxBQ==
X-Gm-Message-State: APjAAAUQgQpoBPyqwf5mISWuP5x8LMUjupnbfV4c5vuNViPOCDNSAzkf
 BGt+tx+Emj+iPqP9+GZBiQ9dxQ==
X-Google-Smtp-Source: APXvYqw9N8Sn2vt43SeeNig+fvTZyfd4FhrFCZQ8nv6+4b2CTetI7wo1XDje3ODj4gCpw+qO/iboMw==
X-Received: by 2002:a1c:e90f:: with SMTP id q15mr6736132wmc.89.1560924349841; 
 Tue, 18 Jun 2019 23:05:49 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id c4sm13697164wrt.86.2019.06.18.23.05.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Jun 2019 23:05:49 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:05:47 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Andy Gross <agross@kernel.org>
Subject: Re: [RESEND v4 1/4] soc: qcom: geni: Add support for ACPI
Message-ID: <20190619060547.GG18371@dell>
References: <20190617125105.6186-1-lee.jones@linaro.org>
 <20190617125105.6186-2-lee.jones@linaro.org>
 <20190619055207.GA14273@hector.attlocal.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619055207.GA14273@hector.attlocal.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_230551_721296_ABF0A5C7 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, felipe.balbi@linux.intel.com, ard.biesheuvel@linaro.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, alokc@codeaurora.org, linux-arm-msm@vger.kernel.org,
 jlhugo@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxOSBKdW4gMjAxOSwgQW5keSBHcm9zcyB3cm90ZToKCj4gT24gTW9uLCBKdW4gMTcs
IDIwMTkgYXQgMDE6NTE6MDJQTSArMDEwMCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gV2hlbiBib290
aW5nIHdpdGggQUNQSSBhcyB0aGUgYWN0aXZlIHNldCBvZiBjb25maWd1cmF0aW9uIHRhYmxlcywK
PiA+IGFsbDsgY2xvY2tzLCByZWd1bGF0b3JzLCBwaW4gZnVuY3Rpb25zIGVjdCBhcmUgZXhwZWN0
ZWQgdG8gYmUgYXQKPiA+IHRoZWlyIGlkZWFsIHZhbHVlcy9sZXZlbHMvcmF0ZXMsIHRodXMgdGhl
IGFzc29jaWF0ZWQgZnJhbWV3b3Jrcwo+ID4gYXJlIHVuYXZhaWxhYmxlLiAgRW5zdXJlIGNhbGxz
IHRvIHRoZXNlIEFQSXMgYXJlIHNoaWVsZGVkIHdoZW4KPiA+IEFDUEkgaXMgZW5hYmxlZC4KPiA+
IAo+ID4gU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiA+
IEFja2VkLWJ5OiBBcmQgQmllc2hldXZlbCA8YXJkLmJpZXNoZXV2ZWxAbGluYXJvLm9yZz4KPiAK
PiBBcHBsaWVkLgoKVGhhbmtzIEJqb3JuIGFuZCBBbmR5LgoKLS0gCkxlZSBKb25lcyBb5p2O55C8
5pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdp
dHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
