Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C66B55F28A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 08:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mkWzGlWV/trUWIK3768avINu34oJBRQNIVNtFT+VYZM=; b=i9QKIndVVdTYx0PhgZsrGKAlD
	0zj12qb+r71E/q8vAAn4Accye8ScalW0Lmcf+F3T/qKryvuq90xZnc9RfJV8AjZ12UJtoGTnP11+v
	yWXDpE7DAv8bklfcoXmApFL5zflR7GGMBqeqm937wM9blKK/dTmtkAJ2zTKEk3pBOFE/ylIz9pyca
	tRm/23PQM4u9yYIe9X5JXLreijk+f3xINeXMfktiN7OPo1nVkLfIWw/QtIgoTUUcQgTdgf9j0G3Cu
	LVQbpGM+HddelwWSac29SI6NW7itn3T2/MMdI5zZ6iX00G+E7VGn+PSz+BwdfYdxdZp7jefrLLGQO
	P4W4YJDiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiurp-0004Xw-SJ; Thu, 04 Jul 2019 06:05:13 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiurV-0004XS-WD
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 06:04:55 +0000
Received: by mail-pg1-x544.google.com with SMTP id i18so2370057pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 23:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=IYNDMwEAAumzRZivDc5Bsr2LbGFMlienhp8YivPF7m8=;
 b=BBgZfVY7Yvqs01AOHbN9gnMwKmmlegENWbG/bQy8SAOFjEN0jWMh553QE4Vb4b8/zx
 fc7H4jq19IUIYrfl/1hWM9Jb5Ga0jrYCnFHdtT62VVbG/bTzqYHkLv8HYb9Facm5DRUw
 K6MdQazi/b4I1q4ansuOBXgG7Ba6PH0BXU/N/K7I5Eaj7m4m4sVSWsYM4QMVY+XxVFsN
 7xYNbEsYmX8QJbxkrh+HtKrWFXKM+acx63XccFk4CvXq59kh+08xdxgmzP/UGwdexZiF
 tqVGYtNPIaoE1woxWwdvEf1YvFDaDPV+WWYLcf/27yoa55VUyP5i6itJz9GPUdGSG4IL
 2MIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding;
 bh=IYNDMwEAAumzRZivDc5Bsr2LbGFMlienhp8YivPF7m8=;
 b=qf1tDQq/HPa6phBzqqqiF3laEBaKFiWDaKdJUq3+nmoTqF4wf6tja5pyaY6JUOFZ9v
 B/Sa8v7EdPeL5NpBiNzZvzJicK8yL09bh/EMmPqMEEcDLHbrMYt7h2ArVUWUztw0kxXj
 FieQ92fGfS+BdGP1hnaCIVyIQcP/IgiCj/0l+h7AQz22bXutwwhBgmr9Xvk5CnFa6z2h
 l8RrsLnIMdLlgHoUe4VnIKSOVSHlcOZg3p8cetfg8TK1mLTK086i/U7oeSKh7dCE1cqF
 9zk2kyiPUZAAvarNiE678Mdg+mso/PZz9PtzC5YUNUYACXWyBgwiUgkMtji3DS6G/knx
 p/3g==
X-Gm-Message-State: APjAAAVTvXNmrxBSKKNqUQti25dSmyScf6KtkQBJxWw2kkkP8QUC5v2l
 CqE/by9VIB909qmHWcy5w/M1svWL
X-Google-Smtp-Source: APXvYqwrpuHzxiXd2Uf2RAlh3u6kWiRxybILi9WncqhlipHt+FeUMIKk8gwQMibe2uLYysEmaK0rxw==
X-Received: by 2002:a17:90a:3aed:: with SMTP id
 b100mr17799640pjc.63.1562220290787; 
 Wed, 03 Jul 2019 23:04:50 -0700 (PDT)
Received: from [0.0.0.0] ([80.240.31.150])
 by smtp.gmail.com with ESMTPSA id v12sm3289916pjk.13.2019.07.03.23.04.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 23:04:50 -0700 (PDT)
Subject: Re: [PATCH RFC 0/3] Support CPU hotplug for ARM64
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>, rjw@rjwysocki.net,
 catalin.marinas@arm.com, james.morse@arm.com
References: <1561720392-45907-1-git-send-email-wangxiongfeng2@huawei.com>
 <2b22cf4d-9646-9f20-41ae-cceb83d9791b@gmail.com>
 <135ee490-a5a6-46c9-208e-81849b20d6b6@huawei.com>
From: Jia He <hejianet@gmail.com>
Organization: ARM
Message-ID: <7898e483-a8e4-39a2-358f-8fcf838c242f@gmail.com>
Date: Thu, 4 Jul 2019 14:04:34 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <135ee490-a5a6-46c9-208e-81849b20d6b6@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_230454_178107_6F533428 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hejianet[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: xiexiuqi@huawei.com, jonathan.cameron@huawei.com, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWGlvbmdmZW5nCgpTb3JyeSwgSSBtaXNzZWQgeW91ciBsYXR0ZXIgbWFpbCwgeW91IHVzZWQg
YSBlbXVsYXRlZCBTQ0kgaW50ZXJydXB0CgotLS0KQ2hlZXJzLApKdXN0aW4gKEppYSBIZSkKCk9u
IDIwMTkvNy80IDExOjI2LCBYaW9uZ2ZlbmcgV2FuZyB3cm90ZToKPiBIaSBKdXN0aW4sCj4KPiBP
biAyMDE5LzcvNCAxMTowMCwgSmlhIEhlIHdyb3RlOgo+PiBIaSBYaW9uZ2ZlbmcKPj4KPj4gSXQg
aXMgYSBsaXR0bGUgYml0IGF3a2Z1bCB0aGF0IEkgYW0gYWxzb8KgIGludmVzdGlnYXRpbmcgYWNw
aSBiYXNlZCBjcHUgaG90cGx1ZyBpc3N1ZSBzaWxpbWFyIHdpdGgKPj4KPj4geW91ciBpZGVhLiBN
eSBxdWVzdGlvbiBpcyB5b3VyIHB1cnBvc2UgdG8gaW1wbGVtZW50IHRoZSB2Y3B1IGhvdHBsdWcg
aW4gYXJtNjQgcWVtdT8KPiBZZXMsIG15IHB1cnBvc2UgaXMgdG8gaW1wbGVtZW50IHRoZSB2Y3B1
IGhvdHBsdWcgaW4gYXJtNjQgcWVtdS4gU28gdGhhdCBJIGNhbiBhZGQgb3IgcmVtb3ZlIHZjcHUK
PiB3aXRob3V0IHNodXR0aW5nIGRvd24gdGhlIEd1ZXN0IE9TLgo+Cj4gVGhhbmtzLAo+IFhpb25n
ZmVuZwo+Cj4+IFRoYW5rcyBmb3IgdGhlIGVsbGFib3JhdGlvbgo+Pgo+PiAtLS0KPj4gQ2hlZXJz
LAo+PiBKdXN0aW4gKEppYSBIZSkKPj4KPj4gT24gMjAxOS82LzI4IDE5OjEzLCBYaW9uZ2Zlbmcg
V2FuZyB3cm90ZToKPj4+IFRoaXMgcGF0Y2hzZXQgbWFyayBhbGwgdGhlIEdJQ0Mgbm9kZSBpbiBN
QURUIGFzIHBvc3NpYmxlIENQVXMgZXZlbiB0aG91Z2ggaXQKPj4+IGlzIGRpc2FibGVkLiBCdXQg
b25seSB0aG9zZSBlbmFibGVkIEdJQ0Mgbm9kZSBhcmUgbWFya2VkIGFzIHByZXNlbnQgQ1BVcy4K
Pj4+IFNvIHRoYXQga2VybmVsIHdpbGwgaW5pdGlhbGl6ZSBzb21lIENQVSByZWxhdGVkIGRhdGEg
c3RydWN0dXJlIGluIGFkdmFuY2UgYmVmb3JlCj4+PiB0aGUgQ1BVIGlzIGFjdHVhbGx5IGhvdCBh
ZGRlZCBpbnRvIHRoZSBzeXN0ZW0uIFRoaXMgcGF0Y2hzZXQgYWxzbyBpbXBsZW1lbnQKPj4+ICdh
Y3BpXyh1biltYXBfY3B1KCknIGFuZCAnYXJjaF8odW4pcmVnaXN0ZXJfY3B1KCknIGZvciBBUk02
NC4gVGhlc2UgZnVuY3Rpb25zIGFyZQo+Pj4gbmVlZGVkIHRvIGVuYWJsZSBDUFUgaG90cGx1Zy4K
Pj4+Cj4+PiBUbyBzdXBwb3J0IENQVSBob3RwbHVnLCB3ZSBuZWVkIHRvIGFkZCBhbGwgdGhlIHBv
c3NpYmxlIEdJQ0Mgbm9kZSBpbiBNQURUCj4+PiBpbmNsdWRpbmcgdGhvc2UgQ1BVcyB0aGF0IGFy
ZSBub3QgcHJlc2VudCBidXQgbWF5IGJlIGhvdCBhZGRlZCBsYXRlci4gVGhvc2UKPj4+IENQVXMg
YXJlIG1hcmtlZCBhcyBkaXNhYmxlZCBpbiBHSUNDIG5vZGVzLgo+Pj4KPj4+IFhpb25nZmVuZyBX
YW5nICgzKToKPj4+ICDCoMKgIEFDUEkgLyBzY2FuOiBldmFsdWF0ZSBfU1RBIGZvciBwcm9jZXNz
b3JzIGRlY2xhcmVkIHZpYSBBU0wgRGV2aWNlCj4+PiAgwqDCoMKgwqAgc3RhdGVtZW50Cj4+PiAg
wqDCoCBhcm02NDogbWFyayBhbGwgdGhlIEdJQ0Mgbm9kZXMgaW4gTUFEVCBhcyBwb3NzaWJsZSBj
cHUKPj4+ICDCoMKgIGFybTY0OiBBZGQgQ1BVIGhvdHBsdWcgc3VwcG9ydAo+Pj4KPj4+ICDCoCBh
cmNoL2FybTY0L2tlcm5lbC9hY3BpLmPCoCB8IDIyICsrKysrKysrKysrKysrKysrKysrKysKPj4+
ICDCoCBhcmNoL2FybTY0L2tlcm5lbC9zZXR1cC5jIHwgMTkgKysrKysrKysrKysrKysrKysrLQo+
Pj4gIMKgIGFyY2gvYXJtNjQva2VybmVsL3NtcC5jwqDCoCB8IDExICsrKysrLS0tLS0tCj4+PiAg
wqAgZHJpdmVycy9hY3BpL3NjYW4uY8KgwqDCoMKgwqDCoCB8IDEyICsrKysrKysrKysrKwo+Pj4g
IMKgIDQgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPj4+
Cj4+IC4KPj4KLS0gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
