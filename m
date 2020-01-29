Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F09014CF7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 18:19:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Y0ReayIBPyltxYVQ3kfrEuMu8/RjcZ9X05skzo0BoI=; b=gBR19QYOT0waSO
	BbdBhVDnmAtvyGvoz+JvNuoyCSVzOIihQaCmHj0lQ+j7Wzl7lQtejUeQ9IigHHaiVGoVVRj6vohF5
	Xzfgy+0vp2r5f6zIcG+cLMSJEWShCnCGRW6bI+oVcxa/XgoyASM1TxwSOdJ4xuQmvaF2F7oFd+8pY
	2uiyORHM5msxBwczZZ85eRFxk0mdqXJxse3ywJxo1cOlrBcIOtNgvoN22LL3BAKK0hsQHuTmBk4sd
	9wk8a11LpqKSzYuaxLNjNasEbkV0R7GuhEYIZp8trHtADTlpJKBPhfhDjjfqQpAYY5Vavykh5q3uc
	IfOn2ab9glO4q10cSDyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwqze-0004rS-Me; Wed, 29 Jan 2020 17:19:10 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwqzV-0004qe-UZ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 17:19:03 +0000
Received: by mail-lj1-x242.google.com with SMTP id w1so184317ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Jan 2020 09:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gbJtuHtMtIG58qn8sgjSg+QMYd2kq8kiaTQag0/0PO0=;
 b=A8D3q1L1PpHreiid6/UiAVlNngte4w2Qqx/DHTz7AUkVo0S7gnwbwozEjSmASiFPeR
 lynXnsDEAT76TZvuhbyyHHUxMCDtf15SQjVEorIYpnvRpACUel5+WT6APpwQ59xLyLZ7
 SsG5nYT3Q2d3Xq81DjkvR/bngQcq7+a/asgPTTnP2Tp5kVW01NjxDWnSBMXQLqWLzEtd
 mfiDAgzsKSxG08sGtan1wBKgtCvZUxp11MIq2B6wStYeGZ4ZWCiiPYIiYIJOBknXr2oD
 ZzNSk7+Zy7GWbzz2SeacZjzFms0qM/BHzYzhpCvXGUbKbKzB5NA/YfYgw5nOqsP+LRED
 aFAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gbJtuHtMtIG58qn8sgjSg+QMYd2kq8kiaTQag0/0PO0=;
 b=tEX/dCwL894XEd8/c9nQDweqDuypFv4GyOTO3m/8TpfL+KPTHESXB2M7mGsCNFO3a2
 Be8YFLB2xhssL4oKhPJH/xdAidxSf8CP3PMWgYsOVorJ7XUgrkkXphuvwEv21/ZgF3Zv
 GV8EMsff5yayQ33UrVzJhantvInPqV3/XLv6SLBpguAm4rbI18ftEDhjw436wr9d4Hhd
 LgZ9vWk3tXUZSqkhBAuWtkjcVHRHM0KM+LOAWdBrO63WhtcwQEAzGAitKdbjmgyN6RQR
 /TL21o03pXIs4kGWu75lwwv2KEmoEG9O7SM9T6bPonyz7KSSga7hgQmyFCaqvNvh3GEO
 tPnA==
X-Gm-Message-State: APjAAAXAuMoMgwmg2J5thnPq9vqIPSLf2zxCQr4owQInUV8T0GUothZA
 NIfTxOrnWkO03RiVa3N2Ke8=
X-Google-Smtp-Source: APXvYqxMRqU/Zwg1r0oEOGWXRoLfv6lMbLv4fpRQ/Xo880/4WQEsbhwhBxq8NjNmBpDBa9zt0P+FbQ==
X-Received: by 2002:a2e:9b03:: with SMTP id u3mr93715lji.87.1580318339534;
 Wed, 29 Jan 2020 09:18:59 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id e8sm1577443ljb.45.2020.01.29.09.18.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jan 2020 09:18:58 -0800 (PST)
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
To: Andrew Morton <akpm@linux-foundation.org>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
 <20200126185951.c9246349befcccce210a4ab8@linux-foundation.org>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <b5eb4766-38ba-0153-2844-cc303fe0dc07@gmail.com>
Date: Wed, 29 Jan 2020 20:18:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200126185951.c9246349befcccce210a4ab8@linux-foundation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_091902_009324_EED8132F 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
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
Cc: thellstrom@vmware.com, yang.shi@linux.alibaba.com,
 Russell King - ARM Linux <linux@armlinux.org.uk>, aneesh.kumar@linux.ibm.com,
 linux-kernel@vger.kernel.org, Jon Hunter <jonathanh@nvidia.com>,
 linux-mm@kvack.org, Thierry Reding <thierry.reding@gmail.com>,
 Wei Yang <richardw.yang@linux.intel.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, dan.j.williams@intel.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjcuMDEuMjAyMCAwNTo1OSwgQW5kcmV3IE1vcnRvbiDQv9C40YjQtdGCOgo+IE9uIFN1biwgMjYg
SmFuIDIwMjAgMTc6NDc6NTcgKzAzMDAgRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29t
PiB3cm90ZToKLi4uCj4+IEhlbGxvIFdlaSwKPj4KPj4gU3RhcnRpbmcgd2l0aCBuZXh0LTIwMjAw
MTIyLCBJJ20gc2VlaW5nIHRoZSBmb2xsb3dpbmcgaW4gS01TRyBvbiBOVklESUEKPj4gVGVncmEg
KEFSTTMyKToKPj4KPj4gICBCVUc6IEJhZCByc3MtY291bnRlciBzdGF0ZSBtbToocHRydmFsKSB0
eXBlOk1NX0FOT05QQUdFUyB2YWw6MTkwCj4+Cj4+IGFuZCBldmVudHVhbGx5IGtlcm5lbCBoYW5n
cy4KPj4KPj4gR2l0J3MgYmlzZWN0aW9uIHBvaW50cyB0byB0aGlzIHBhdGNoIGFuZCByZXZlcnRp
bmcgaXQgaGVscHMuIFBsZWFzZSBmaXgsCj4+IHRoYW5rcyBpbiBhZHZhbmNlLgo+IAo+IFRoYW5r
cy4gIEkgaGFkIHRoZXNlIHRhZ2dlZCBmb3IgNS43LXJjMSBhbnl3YXksIHNvIEknbGwgZHJvcCBh
bGwgZml2ZQo+IHBhdGNoZXMuCj4gCgpIZWxsbyBBbmRyZXcsCgpGWUksIEknbSBzdGlsbCBzZWVp
bmcgdGhlIG9mZmVuZGluZyBwYXRjaGVzIGluIHRoZSB0b2RheSdzIG5leHQtMjAyMDAxMjkuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
