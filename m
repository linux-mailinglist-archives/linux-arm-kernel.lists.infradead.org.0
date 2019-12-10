Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7DF118003
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 06:54:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mp2V0iC6vf2WGbv3k/l1ZhHGxgSiXV6XgCsWyIVXN7Q=; b=CVlct+UqgXFjwFZzszGt3GMRr
	ATaXce3ZgfSXgKLyaMUtULWpkT6+OZOrDrwHEXBaxGPfzI6UzriD3L/oCF4y8jNu7OJIt6mvuJ57q
	7at882QYMaffKIipgEEJpDp+iNWdnHZYXDHvrJC9vR9CEc/+mlXEyVsBtVWvRX3Ssm9A/3Nyn8b0r
	kWbFSaDxW6pEfygsz7kPNffq8NqpTW6GaMFbZ7K+HIHsYhDZrRqhwoDMnCgcT7BhS1p/NGA0dA1hG
	rgmFaz9Hp8YxQv/5FfBV1NULiDNP2ls4s0/CwG48gzNnhOfbQg2PE1sYYnYO4WEVea6QGEllaqjdB
	D8yETLPyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieYTf-0004sF-Mp; Tue, 10 Dec 2019 05:54:31 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieYTW-0004rg-IC
 for linux-arm-kernel@bombadil.infradead.org; Tue, 10 Dec 2019 05:54:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mGhAhm0kPrPwf7p5pVcAfN/hYwtbIoEqSzwI2gGXHbQ=; b=H2x56gYuXfViDsnZPVxH4gEpwI
 W8RK9IrivUHOmMSqPLdxmkc1fYPdECe6F2QCnixEs12ClVfVX07XB7RuvczNGtOYowxeePIkt3ZJ2
 ejzvlX0Yk39rKir93JGHPg5UiYeyaLeBUmPOm9eX1JfD47f4NKY+r3dNM7i/lmPzGxbtoBM+sI93A
 FGOTBowbXyCw9s+gc8SCv/O1dq7/MYp6bKSWZLe9mt345FqJusmI24SfjIL4X1Ykqw2pnUVKUBmlH
 FP4Mkeud4N3kfwdeA/LP4aFzKVtWigoOXL+5KghEv2cOdvKNwcSDIZSvdbJIeQQLu2bSNIugYKzT6
 g0vFHtkA==;
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieYTQ-00079N-5b
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 05:54:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1575957178;
 bh=mGhAhm0kPrPwf7p5pVcAfN/hYwtbIoEqSzwI2gGXHbQ=;
 h=Subject:To:From:Message-ID:Date:MIME-Version;
 b=SLm+tsbybe0+IQHxB0tQUNT4eA/asgiBx65wVnjhEl1px+D5ZxqOWzFaErSwdp/T4
 3LUimx7jvvw8b+DtoMVyt0ZRsFs+G0fDCerghaaWhoFN1Hhc9uicMANa5twONDrLhK
 xqScRebnYXTO8HJceILQh1M1GuiQztIDgh+TdaOE=
X-QQ-mid: esmtp5t1575957173t3inkduqo
Received: from [192.168.1.6] (unknown [36.5.192.233])
 by esmtp4.qq.com (ESMTP) with 
 id ; Tue, 10 Dec 2019 13:52:50 +0800 (CST)
X-QQ-SSF: 00000000000000L0ZI100000000000K
X-QQ-FEAT: LS2tEetiLaM2Bmy5aIyHqIBkjMfwW5O3ZnJ2d/XXNPZv6FgFvJ1deIJCtYOcg
 Hfjt8fyYo11d7TaL96UHngjJIj9iBjPou8mi3qvRDl/7j0vt00fkp7yHr9+7/ZyUrNtzztY
 Q6phTzNzhU15dkmH3Ac21WYMj0empT3LF0mcFZ7J9purT9ApbqFux3CJPyzXi2WfJgq1jMp
 fSLk6DPi0nYnIFtBaDi+7xUpDz/Cpfaez7WXMpshtc4GnP0dNDW9get4ZDqigc0AlHnkNgf
 ZvwlZBq65nxTU3rP/NHi+q/My/tFax9S3UQTQRWnOf8aPhDg4kQCE1YlU=
X-QQ-GoodBg: 0
Subject: Re: [PATCH v3 00/13] iommu: Add PASID support to Arm SMMUv3
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
References: <20191209180514.272727-1-jean-philippe@linaro.org>
From: "zhangfei.gao@foxmail.com" <zhangfei.gao@foxmail.com>
Message-ID: <56fb5aec-50ee-5bc0-dbd5-ff944080c62b@foxmail.com>+AA82B9158B64F7B8
Date: Tue, 10 Dec 2019 13:52:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191209180514.272727-1-jean-philippe@linaro.org>
Content-Language: en-US
X-QQ-SENDSIZE: 520
Feedback-ID: esmtp:foxmail.com:bgforeign:bgforeign11
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 2.6 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhangfei.gao[at]foxmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.2 INVALID_MSGID          Message-Id is not valid, according to RFC 2822
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, bhelgaas@google.com, zhangfei.gao@linaro.org,
 will@kernel.org, lenb@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LzEyLzEwIOS4iuWNiDI6MDUsIEplYW4tUGhpbGlwcGUgQnJ1Y2tlciB3cm90ZToK
PiBBZGQgc3VwcG9ydCBmb3IgU3Vic3RyZWFtIElEIGFuZCBQQVNJRHMgdG8gdGhlIFNNTVV2MyBk
cml2ZXIuCj4gQ2hhbmdlcyBzaW5jZSB2MiBbMV06Cj4KPiAqIFNwbGl0IHByZXBhcmF0b3J5IHdv
cmsgaW50byBwYXRjaGVzIDUsIDYsIDggYW5kIDkuCj4KPiAqIEFkZGVkIHBhdGNoIDEuIE5vdCBz
dHJpY3RseSByZWxldmFudCwgYnV0IHNpbmNlIHdlJ3JlIG1vdmluZyB0aGUgRE1BCj4gICAgYWxs
b2NhdGlvbnMgYW5kIGFkZGluZyBhIG5ldyBvbmUsIHdlIG1pZ2h0IGFzIHdlbGwgY2xlYW4gdGhl
IGZsYWdzCj4gICAgZmlyc3QuCj4KPiAqIEZpeGVkIGEgZG91YmxlIGZyZWUgcmVwb3J0ZWQgYnkg
Sm9uYXRoYW4sIGFuZCBvdGhlciBzbWFsbAo+ICAgIGlzc3Vlcy4KPgo+ICogQWRkZWQgcGF0Y2gg
MTIuIFVwc3RyZWFtIGNvbW1pdCBjNmU5YWVmYmY5ZGIgKCJQQ0kvQVRTOiBSZW1vdmUgdW51c2Vk
Cj4gICAgUFJJIGFuZCBQQVNJRCBzdHVicyIpIHJlbW92ZWQgdGhlIHVudXNlZCBQQVNJRCBzdHVi
cy4gU2luY2UgdGhlIFNNTVUKPiAgICBkcml2ZXIgY2FuIGJlIGJ1aWx0IHdpdGhvdXQgUENJLCB0
aGUgc3R1YnMgYXJlIG5vdyBuZWVkZWQuCj4KPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGludXgtaW9tbXUvMjAxOTExMDgxNTI1MDguNDAzOTE2OC0xLWplYW4tcGhpbGlwcGVAbGluYXJv
Lm9yZy8KPgo+IEplYW4tUGhpbGlwcGUgQnJ1Y2tlciAoMTMpOgo+ICAgIGlvbW11L2FybS1zbW11
LXYzOiBEcm9wIF9fR0ZQX1pFUk8gZmxhZyBmcm9tIERNQSBhbGxvY2F0aW9uCj4gICAgZHQtYmlu
ZGluZ3M6IGRvY3VtZW50IFBBU0lEIHByb3BlcnR5IGZvciBJT01NVSBtYXN0ZXJzCj4gICAgaW9t
bXUvYXJtLXNtbXUtdjM6IFN1cHBvcnQgcGxhdGZvcm0gU1NJRAo+ICAgIEFDUEkvSU9SVDogU3Vw
cG9ydCBQQVNJRCBmb3IgcGxhdGZvcm0gZGV2aWNlcwo+ICAgIGlvbW11L2FybS1zbW11LXYzOiBQ
cmVwYXJlIGFybV9zbW11X3MxX2NmZyBmb3IgU1NJRCBzdXBwb3J0Cj4gICAgaW9tbXUvYXJtLXNt
bXUtdjM6IEFkZCBjb250ZXh0IGRlc2NyaXB0b3IgdGFibGVzIGFsbG9jYXRvcnMKPiAgICBpb21t
dS9hcm0tc21tdS12MzogQWRkIHN1cHBvcnQgZm9yIFN1YnN0cmVhbSBJRHMKPiAgICBpb21tdS9h
cm0tc21tdS12MzogUHJvcGF0ZSBzc2lkX2JpdHMKPiAgICBpb21tdS9hcm0tc21tdS12MzogSGFu
ZGxlIGZhaWx1cmUgb2YgYXJtX3NtbXVfd3JpdGVfY3R4X2Rlc2MoKQo+ICAgIGlvbW11L2FybS1z
bW11LXYzOiBBZGQgc2Vjb25kIGxldmVsIG9mIGNvbnRleHQgZGVzY3JpcHRvciB0YWJsZQo+ICAg
IGlvbW11L2FybS1zbW11LXYzOiBJbXByb3ZlIGFkZF9kZXZpY2UoKSBlcnJvciBoYW5kbGluZwo+
ICAgIFBDSS9BVFM6IEFkZCBQQVNJRCBzdHVicwo+ICAgIGlvbW11L2FybS1zbW11LXYzOiBBZGQg
c3VwcG9ydCBmb3IgUENJIFBBU0lECj4KClRoYW5rcyBKZWFuIGZvciBlbmFibGluZyB0aGUgc3Zh
IGZlYXR1cmUuCgpUaGUgc2VyaWVzIHRlc3RlZCB3ZWxsIG9uIEhpc2lsaWNvbiBwbGF0Zm9ybSBL
dW5QZW5nOTIwClRlc3RlZC1ieTogWmhhbmdmZWkgR2FvIDx6aGFuZ2ZlaS5nYW9AbGluYXJvLm9y
Zz4KClRoYW5rcwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
