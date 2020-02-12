Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C09F15A798
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 12:19:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BbumB/HTEql4SAysfwuu5FtOf6dEFCFapmVitjYRDHw=; b=fsH7YLRmA+BUp8
	FhG/V6KLLB7MSS37QfGAeYEj0mwjP3A/bzVO5v7KZn/pftqkWZmE4CrKLBzI99qMiZV+dtdSpAL4/
	aLHrHlR47iZ/mOb0Wi4E1aIr4k6zB3I3+fBjXq71lqrHqADO+vNZ78j+DGWiIsS688qhIIDsqdMA8
	vBiekiU9sj0PKK1GrpTYxJqH5aQ8izMlX39hWnCL/1i+7FsQJ9qSFdaGOG5KgUZPp1LOap5RL6l/H
	5UNJUuNFndC//Y3lchr1e5RHk340kmKEg6H3kqaLZ3wkroMYifJTMVRCWyIDUDaajKT4ZsdrLDEhM
	+ZPFyb37shlIlZOkGBKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1q3V-0007Gm-R1; Wed, 12 Feb 2020 11:19:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1q3O-0007G0-JU
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 11:19:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id s10so1742563wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 03:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HTAbsiExrv4QW5/STpGu+6w7JGxPZpOjJdCEoGEBulE=;
 b=asC2bVXdzvBx2cv631MWiOZTxgICbuneQqKi8jfIo5dqiZz0iQBe81K/qJOaxhm6Rs
 3Zw+GgWiVagyFqB07np+5rwwcH598FjsDyOChfSCPUsoC8IlWL5MusYCKHfZ+NSBG0Uy
 8Ypisw0s6+NJL73FtztJHvi84kXMdy+QLlq48H69RO5NeSFhgGpfv3uJY8ogDRPNQPl0
 CICVXNayohk4XXsQiP59rNGzOnXzIXcGr2JAf3fuQyj9ke8nBLUgWXwgY+v5u3RU9BD6
 Cp15qkrpgkjyEf4QKF83kFQBXnlnKZzzQk/0jaTeWhf+Pp/kzC1qCCWs9MZhScTZaWel
 KMoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HTAbsiExrv4QW5/STpGu+6w7JGxPZpOjJdCEoGEBulE=;
 b=lSkbotPWwewz1NTWgHwqrz9A6Chh6g66kq1MR6rIKn0PM18HYl+j6jsEf6peiAfIsB
 MMiFvTXLindGyULugmNtGFQ76pIPjit+TMJepgFOKnsyUYUn1K1TPbp235xsQXJTLIvV
 HuwssQlDa0WblRpoMNI/J4nv9nz0V4AU5rE6Aqkc18/Jsm4TJIUoVrZI5oe9ymbHFqdX
 jpxddfJgp8MCw0NNJiK9DY2X3b7eWbB039ZUaGenHnxHr9LEgxdNsXd9OFicZ85m4Qav
 /2dcRSa86PKrrWhalKsrPyBSU+KfvQdFEbeKMrnw1cjA0X4ejVQYWA3j5eEfBD6AYMTq
 WnJg==
X-Gm-Message-State: APjAAAXpCyN9hCBDRx5sQOf3zmB3HR/cP6T4jEZl+4uk8TDiLQnX/qoX
 6Ppk/g1lIVfufss62Au/+qQy1Ysw
X-Google-Smtp-Source: APXvYqwkFBJvPdmgKxekMrEjI+4BX8KddY4MNX3CmIouqTPCRhht4uH4TzYx/UcbXZMVAfkKZRPdog==
X-Received: by 2002:a7b:c216:: with SMTP id x22mr12685206wmi.51.1581506375637; 
 Wed, 12 Feb 2020 03:19:35 -0800 (PST)
Received: from [192.168.2.41] ([46.227.18.67])
 by smtp.gmail.com with ESMTPSA id m21sm300439wmi.27.2020.02.12.03.19.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Feb 2020 03:19:34 -0800 (PST)
Subject: Re: [PATCH] tty/serial: atmel: manage shutdown in case of RS485 or
 ISO7816 mode
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-serial@vger.kernel.org
References: <20200210152053.8289-1-nicolas.ferre@microchip.com>
From: Richard Genoud <richard.genoud@gmail.com>
Message-ID: <f40181d1-3781-2cd9-11b3-420ef0d29ce7@gmail.com>
Date: Wed, 12 Feb 2020 12:19:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200210152053.8289-1-nicolas.ferre@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_031938_642922_D23BC179 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.genoud[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMTAvMDIvMjAyMCDDoCAxNjoyMCwgTmljb2xhcyBGZXJyZSBhIMOpY3JpdMKgOgo+IEluIGF0
bWVsX3NodXRkb3duKCkgd2UgY2FsbCBhdG1lbF9zdG9wX3J4KCkgYW5kIGF0bWVsX3N0b3BfdHgo
KSBmdW5jdGlvbnMuCj4gUHJldmVudCB0aGUgcnggcmVzdGFydCB0aGF0IGlzIGltcGxlbWVudGVk
IGluIFJTNDg1IG9yIElTTzc4MTYgbW9kZXMgd2hlbgo+IGNhbGxpbmcgYXRtZWxfc3RvcF90eCgp
IGJ5IHVzaW5nIHRoZSBhdG9taWMgaW5mb3JtYXRpb24gdGFza2xldF9zaHV0ZG93bgo+IHRoYXQg
aXMgYWxyZWFkeSBpbiBwbGFjZSBmb3IgdGhpcyBwdXJwb3NlLgo+IAo+IEZpeGVzOiA5OGYyMDgy
YzNhYzQgKCJ0dHkvc2VyaWFsOiBhdG1lbDogZW5mb3JjZSB0YXNrbGV0IGluaXQgYW5kIHRlcm1p
bmF0aW9uIHNlcXVlbmNlcyIpCj4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBGZXJyZSA8bmljb2xh
cy5mZXJyZUBtaWNyb2NoaXAuY29tPgoKQWNrZWQtYnk6IFJpY2hhcmQgR2Vub3VkIDxyaWNoYXJk
Lmdlbm91ZEBnbWFpbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2Vy
aWFsLmMgfCAzICsrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJpYWwu
YyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJpYWwuYwo+IGluZGV4IGMxNWMzOThjODhh
OS4uYTM5Yzg3YTdjMmUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9z
ZXJpYWwuYwo+ICsrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJpYWwuYwo+IEBAIC01
NzAsNyArNTcwLDggQEAgc3RhdGljIHZvaWQgYXRtZWxfc3RvcF90eChzdHJ1Y3QgdWFydF9wb3J0
ICpwb3J0KQo+ICAJYXRtZWxfdWFydF93cml0ZWwocG9ydCwgQVRNRUxfVVNfSURSLCBhdG1lbF9w
b3J0LT50eF9kb25lX21hc2spOwo+ICAKPiAgCWlmIChhdG1lbF91YXJ0X2lzX2hhbGZfZHVwbGV4
KHBvcnQpKQo+IC0JCWF0bWVsX3N0YXJ0X3J4KHBvcnQpOwo+ICsJCWlmICghYXRvbWljX3JlYWQo
JmF0bWVsX3BvcnQtPnRhc2tsZXRfc2h1dGRvd24pKQo+ICsJCQlhdG1lbF9zdGFydF9yeChwb3J0
KTsKPiAgCj4gIH0KPiAgCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
