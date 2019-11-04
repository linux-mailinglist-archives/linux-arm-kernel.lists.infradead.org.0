Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D64CED9DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:16:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rAt/09mJW3F7ImkIqCGIcRi7zYt8zn0GmF8my+d2hGs=; b=AC/L1yyMCmhuQ+
	z+WK9i9TMpZhO9Wfv6yaId0vBGB4d5ZZb3jB4Wxb8QyVY02MLiP8MmgKf3MPE0DucT9aqwPzGJxU/
	GikzTuXQzNXxCi23XoKzEVCxKtLLs2/M03dpoJHgKJPsBw9K1SM2RrpbG+39UipLAJNtlysci3bfo
	kYVvC0q+zXj6VX1IIlA/H/xFCQ7/RxR2oK4fYAp9uv9zFSgfmefWTmlkdQvn0E9M+A10O3En4ULEc
	hqeYv6XIaCWuUVl/5E0ML9Y0BcqINSepVvK2LNe3tIU71l0ccCe0eyigtmPFa2x5r5KMtKLkZfBmB
	4sbikCizSUEhHp9vay/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWaq-0003oH-9i; Mon, 04 Nov 2019 07:16:04 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWaj-0003nn-DO
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:15:58 +0000
Received: by mail-wm1-x343.google.com with SMTP id f3so3710814wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 23:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=vxpfpSTNArRIpYDDU43CcJdAWB39Ke0QALR4oVEypT4=;
 b=uqj54HMnQA5SJ8btXdn201fUD+jGaxv0l552g9lWfDXXedqkrlhrK8WYzPYXIXWYyX
 QaPcEXRrvT2gPhTihR9C3Xm/RVEuVzOk7oLi1GmuPWxUZGItyCrOOh7gZsMKcT7o/BQf
 vf+6u6C0FtzZ5h+XwUxfrpbufqHz3+wdO5V8Fi7r8uJuMJ4O3CdRjvoFRpUUHNjhBhON
 xBXmN7+nLuWZQOtLouSAFmsCpQwFtAQwYDOkSK7FwgEXwzope9Scf8cki3MPIVQRSlJj
 LBNqN/vrIym3lmNQsl6iacXM4nU391Gq0562F0UFmHRKqj6mRu2RwTP92jdW2WxIehIt
 HtbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=vxpfpSTNArRIpYDDU43CcJdAWB39Ke0QALR4oVEypT4=;
 b=U4RhWqm6ZlCSpywiEssRPalWY5HGGHcADNldvr2BblLQoPRHkMPZNvWCjDG1vx2Qtb
 zHxbxcLebZ9adgjrEHKBtK6PT52iNjS6XoR/BEzgpYgpJjaOAVYfa4eFcVLPi9kE7v77
 yRIp3nlnkWrQ/62a2CAnB+1G4Wjl8vtJKuY5J1tEgfrXAv/w2zURKRhcMZJssj5CCOll
 aKiJ898dnDyUyoUv1E9qly1kULIbGvoeY3qtfZKAdktt+nwhxvJOyWaJu0nzJUdbB2gh
 wgVDNG5yJIJ2e3g+5AE92neTbHj7m5Khl6gnTbL+rqzLxmOe+iAEUcKNiHko2yykeFPy
 WhCw==
X-Gm-Message-State: APjAAAXcOMwQBoutAjZoE+SPenYS3Q2/6cWbpmTOIWyotoCEZMQcCDqR
 76sWVluXgHk9SmVRIgasWl6MqwhHHCU=
X-Google-Smtp-Source: APXvYqz32pI5Sru+QNOivnJMXGi29ceCxEjH6H6KjArDxhH+kDfUeNFyWAPKrA1xkKvDXkWkzwoiGQ==
X-Received: by 2002:a7b:c7c7:: with SMTP id z7mr1785835wmk.133.1572851754938; 
 Sun, 03 Nov 2019 23:15:54 -0800 (PST)
Received: from dell ([2.31.163.64])
 by smtp.gmail.com with ESMTPSA id p12sm17618694wrm.62.2019.11.03.23.15.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 03 Nov 2019 23:15:53 -0800 (PST)
Date: Mon, 4 Nov 2019 07:15:54 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH] dt-bindings: Add syscon YAML description
Message-ID: <20191104071554.GK5700@dell>
References: <20191101141034.259906-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101141034.259906-1-maxime@cerno.tech>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_231557_457791_C7999D42 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAwMSBOb3YgMjAxOSwgTWF4aW1lIFJpcGFyZCB3cm90ZToKCj4gVGhlIHN5c2NvbiBi
aW5kaW5nIGlzIGEgcHJldHR5IGxvb3NlIG9uZSwgd2l0aCBldmVyeW9uZSBoYXZpbmcgYSBidW5j
aCBvZgo+IHZlbmRvciBzcGVjaWZpYyBjb21wYXRpYmxlcy4KPiAKPiBJbiBvcmRlciB0byBzdGFy
dCB0aGUgZWZmb3J0IHRvIGRlc2NyaWJlIHRoZW0gdXNpbmcgWUFNTCwgbGV0J3MgY3JlYXRlIGEK
PiBiaW5kaW5nIHRoYXQgdG9sZXJhdGVzIGFkZGl0aW9uYWwsIG5vdCBsaXN0ZWQsIGNvbXBhdGli
bGVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNo
Pgo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnR4dCAgICAgICAg
fCAzMiAtLS0tLS0tLQo+ICAuLi4vYmluZGluZ3MvbWlzYy9hbGx3aW5uZXIsc3lzY29uLnR4dCAg
ICAgICAgfCAyMCAtLS0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9taXNjL3N5c2Nvbi55
YW1sICAgICAgfCA3NCArKysrKysrKysrKysrKysrKysrCgpXaHkgYXJlIHlvdSBtb3ZpbmcgdGhp
cyB0byBkcml2ZXJzL21pc2M/Cgo+ICAzIGZpbGVzIGNoYW5nZWQsIDc0IGluc2VydGlvbnMoKyks
IDUyIGRlbGV0aW9ucygtKQo+ICBkZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21mZC9zeXNjb24udHh0Cj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWlzYy9hbGx3aW5uZXIsc3lzY29uLnR4dAo+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21p
c2Mvc3lzY29uLnlhbWwKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2Vz
IFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
