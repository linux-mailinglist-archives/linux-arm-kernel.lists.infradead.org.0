Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7A51EBE02
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 16:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaYRrh+FJyO9rYsSMxDedgw+81MrvZrkYaCQw/3XDoQ=; b=CCvbiQ/H1pH0fE
	uT0XZo8DRYyI4eNWbs74kqnlWFaVZhiNzNhUv1JCknc8BYEWOHMvGIK6XV1SoqZMHNFYpjqG3L2Rl
	hLeHsZoCxuxXfJn1qhF+qT+Se789Hsax67EdLGabBlZc12nCYOzhG2XkDuVtFYFLoK5i0+Ut8A8jO
	xVzSRndCGmZ7Td/Ek/kfBvDKb48sRL8h1dZoTYvF2W14iyA1hfEyQvbXCsG4GVJhpuFpnfCGmVzGw
	9rjf6l+i40a6WLiDyXgusCI5kLIB6+DuhN78eM36rqqnHVHJuKiaK+yxLRXJYkCjXsSkvNwOuDGOJ
	cX7BZh8FRT+F2wRPeqQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg7m9-0000eW-J1; Tue, 02 Jun 2020 14:20:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg7lE-0000BI-4W
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 14:19:26 +0000
Received: by mail-pf1-x443.google.com with SMTP id g5so5109234pfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 07:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=49E1AYEq7VVuGCMuPIgz3gRL4F9NJSEdjwQqKdvZbL0=;
 b=zlk4n+qTiUrundVqYH05juNvTRVEaWqUu+Bbw27kmEjh+k8pNmuqc/+CjWRRoe7tni
 ZdW9A37EoqjyqkGQb1kapREQIErFKc2fWwpW3E7s38uzu8x2LIHNFE1DIw2B6yha+Hdd
 VINcdOUvLIAxxzNfq7780ig8oKx0joewua6JLWfsWt91kSaeH/B0UXdqj4e3AHyNcMLg
 wHdOF96b+Owl9H/MLyLRw/IPwsTDjig5x4AG/2OEFWr4p8lJpgE2Da3+qQmM7Yj0xiP3
 QmIrXds+A2i9MKkPGFvp9a0BRGw2Iu1GnmZcd8GuWWNAPjUBLlPteL8o/ro/vGM3Bz29
 S79Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=49E1AYEq7VVuGCMuPIgz3gRL4F9NJSEdjwQqKdvZbL0=;
 b=Lm0yLiTm/ffwWOC/3Z1C6E+mh22qLawxeDc5flSzm01f+0wpudz6j2pBjtiQofO0D4
 7fePr/i83t2w68p9L+R9BlTOGtkyBV2vbyGQAcmZM2YtfnN98yEBuiiD76qXRhuXDQ8z
 nH7bt2Q1HLMcifYmddan1q3SKn08n6dhL0YA6XY2nCDo9mjvIboTznGL2O/XlHbCuBhv
 S0Wp/CQgaau8mccndckIBWxcva+ewMKtPiIvdi1LLB02vawTs67u4IAMMrxpwejh/RU1
 AJ/KF8ZAiQHkCxNehlEA49L1bSuk/bjn6xV4/2v0tI8pzo2j/a1rTganJ2vs9nBqjNQ7
 rMNw==
X-Gm-Message-State: AOAM530Dea1ox//MlD8IO4sg8/lV5tZ17TLii/ZRXaC+CF6cGZLuinIL
 LR8aMLXzpr9/Lvje3gN9N9qzYQ==
X-Google-Smtp-Source: ABdhPJy23KIRnKYWW6ULt/cRF71QmWvN8WFY4ulqQoE7KF9eFzf7h7IJdbGQQYaBgBF+dxMO3K/8ng==
X-Received: by 2002:a62:1b01:: with SMTP id b1mr9904253pfb.14.1591107563040;
 Tue, 02 Jun 2020 07:19:23 -0700 (PDT)
Received: from localhost.localdomain ([117.252.66.248])
 by smtp.gmail.com with ESMTPSA id 141sm2529670pfz.171.2020.06.02.07.19.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 07:19:22 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: jarkko.sakkinen@linux.intel.com, zohar@linux.ibm.com, jejb@linux.ibm.com
Subject: [PATCH v5 3/4] doc: trusted-encrypted: updates with TEE as a new
 trust source
Date: Tue,  2 Jun 2020 19:48:24 +0530
Message-Id: <1591107505-6030-4-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591107505-6030-1-git-send-email-sumit.garg@linaro.org>
References: <1591107505-6030-1-git-send-email-sumit.garg@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_071924_371746_93F568CF 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tee-dev@lists.linaro.org, daniel.thompson@linaro.org,
 Sumit Garg <sumit.garg@linaro.org>, op-tee@lists.trustedfirmware.org,
 corbet@lwn.net, janne.karhunen@gmail.com, linux-doc@vger.kernel.org,
 jmorris@namei.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Markus.Wamser@mixed-mode.de, casey@schaufler-ca.com,
 linux-integrity@vger.kernel.org, jens.wiklander@linaro.org,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXBkYXRlIGRvY3VtZW50YXRpb24gZm9yIFRydXN0ZWQgYW5kIEVuY3J5cHRlZCBLZXlzIHdpdGgg
VEVFIGFzIGEgbmV3CnRydXN0IHNvdXJjZS4gRm9sbG93aW5nIGlzIGJyaWVmIGRlc2NyaXB0aW9u
IG9mIHVwZGF0ZXM6CgotIEFkZCBhIHNlY3Rpb24gdG8gZGVtb3N0cmF0ZSBhIGxpc3Qgb2Ygc3Vw
cG9ydGVkIGRldmljZXMgYWxvbmcgd2l0aAogIHRoZWlyIHNlY3VyaXR5IHByb3BlcnRpZXMvZ3Vh
cmFudGVlcy4KLSBBZGQgYSBrZXkgZ2VuZXJhdGlvbiBzZWN0aW9uLgotIFVwZGF0ZXMgZm9yIHVz
YWdlIHNlY3Rpb24gaW5jbHVkaW5nIGRpZmZlcmVuY2VzIHNwZWNpZmljIHRvIGEgdHJ1c3QKICBz
b3VyY2UuCgpTaWduZWQtb2ZmLWJ5OiBTdW1pdCBHYXJnIDxzdW1pdC5nYXJnQGxpbmFyby5vcmc+
ClJldmlld2VkLWJ5OiBKYXJra28gU2Fra2luZW4gPGphcmtrby5zYWtraW5lbkBsaW51eC5pbnRl
bC5jb20+Ci0tLQogRG9jdW1lbnRhdGlvbi9zZWN1cml0eS9rZXlzL3RydXN0ZWQtZW5jcnlwdGVk
LnJzdCB8IDIwMyArKysrKysrKysrKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTcxIGlu
c2VydGlvbnMoKyksIDMyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
c2VjdXJpdHkva2V5cy90cnVzdGVkLWVuY3J5cHRlZC5yc3QgYi9Eb2N1bWVudGF0aW9uL3NlY3Vy
aXR5L2tleXMvdHJ1c3RlZC1lbmNyeXB0ZWQucnN0CmluZGV4IDUwYWM4YmMuLjQ3NjRhNmQgMTAw
NjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vc2VjdXJpdHkva2V5cy90cnVzdGVkLWVuY3J5cHRlZC5y
c3QKKysrIGIvRG9jdW1lbnRhdGlvbi9zZWN1cml0eS9rZXlzL3RydXN0ZWQtZW5jcnlwdGVkLnJz
dApAQCAtNiwzMCArNiwxNjEgQEAgVHJ1c3RlZCBhbmQgRW5jcnlwdGVkIEtleXMgYXJlIHR3byBu
ZXcga2V5IHR5cGVzIGFkZGVkIHRvIHRoZSBleGlzdGluZyBrZXJuZWwKIGtleSByaW5nIHNlcnZp
Y2UuICBCb3RoIG9mIHRoZXNlIG5ldyB0eXBlcyBhcmUgdmFyaWFibGUgbGVuZ3RoIHN5bW1ldHJp
YyBrZXlzLAogYW5kIGluIGJvdGggY2FzZXMgYWxsIGtleXMgYXJlIGNyZWF0ZWQgaW4gdGhlIGtl
cm5lbCwgYW5kIHVzZXIgc3BhY2Ugc2VlcywKIHN0b3JlcywgYW5kIGxvYWRzIG9ubHkgZW5jcnlw
dGVkIGJsb2JzLiAgVHJ1c3RlZCBLZXlzIHJlcXVpcmUgdGhlIGF2YWlsYWJpbGl0eQotb2YgYSBU
cnVzdGVkIFBsYXRmb3JtIE1vZHVsZSAoVFBNKSBjaGlwIGZvciBncmVhdGVyIHNlY3VyaXR5LCB3
aGlsZSBFbmNyeXB0ZWQKLUtleXMgY2FuIGJlIHVzZWQgb24gYW55IHN5c3RlbS4gIEFsbCB1c2Vy
IGxldmVsIGJsb2JzLCBhcmUgZGlzcGxheWVkIGFuZCBsb2FkZWQKLWluIGhleCBhc2NpaSBmb3Ig
Y29udmVuaWVuY2UsIGFuZCBhcmUgaW50ZWdyaXR5IHZlcmlmaWVkLgorb2YgYSBUcnVzdCBTb3Vy
Y2UgZm9yIGdyZWF0ZXIgc2VjdXJpdHksIHdoaWxlIEVuY3J5cHRlZCBLZXlzIGNhbiBiZSB1c2Vk
IG9uIGFueQorc3lzdGVtLiBBbGwgdXNlciBsZXZlbCBibG9icywgYXJlIGRpc3BsYXllZCBhbmQg
bG9hZGVkIGluIGhleCBhc2NpaSBmb3IKK2NvbnZlbmllbmNlLCBhbmQgYXJlIGludGVncml0eSB2
ZXJpZmllZC4KIAotVHJ1c3RlZCBLZXlzIHVzZSBhIFRQTSBib3RoIHRvIGdlbmVyYXRlIGFuZCB0
byBzZWFsIHRoZSBrZXlzLiAgS2V5cyBhcmUgc2VhbGVkCi11bmRlciBhIDIwNDggYml0IFJTQSBr
ZXkgaW4gdGhlIFRQTSwgYW5kIG9wdGlvbmFsbHkgc2VhbGVkIHRvIHNwZWNpZmllZCBQQ1IKLShp
bnRlZ3JpdHkgbWVhc3VyZW1lbnQpIHZhbHVlcywgYW5kIG9ubHkgdW5zZWFsZWQgYnkgdGhlIFRQ
TSwgaWYgUENScyBhbmQgYmxvYgotaW50ZWdyaXR5IHZlcmlmaWNhdGlvbnMgbWF0Y2guICBBIGxv
YWRlZCBUcnVzdGVkIEtleSBjYW4gYmUgdXBkYXRlZCB3aXRoIG5ldwotKGZ1dHVyZSkgUENSIHZh
bHVlcywgc28ga2V5cyBhcmUgZWFzaWx5IG1pZ3JhdGVkIHRvIG5ldyBwY3IgdmFsdWVzLCBzdWNo
IGFzCi13aGVuIHRoZSBrZXJuZWwgYW5kIGluaXRyYW1mcyBhcmUgdXBkYXRlZC4gIFRoZSBzYW1l
IGtleSBjYW4gaGF2ZSBtYW55IHNhdmVkCi1ibG9icyB1bmRlciBkaWZmZXJlbnQgUENSIHZhbHVl
cywgc28gbXVsdGlwbGUgYm9vdHMgYXJlIGVhc2lseSBzdXBwb3J0ZWQuCiAKLVRQTSAxLjIKLS0t
LS0tLS0KK1RydXN0IFNvdXJjZQorPT09PT09PT09PT09CiAKLUJ5IGRlZmF1bHQsIHRydXN0ZWQg
a2V5cyBhcmUgc2VhbGVkIHVuZGVyIHRoZSBTUkssIHdoaWNoIGhhcyB0aGUgZGVmYXVsdAotYXV0
aG9yaXphdGlvbiB2YWx1ZSAoMjAgemVyb3MpLiAgVGhpcyBjYW4gYmUgc2V0IGF0IHRha2Vvd25l
cnNoaXAgdGltZSB3aXRoIHRoZQotdHJvdXNlcidzIHV0aWxpdHk6ICJ0cG1fdGFrZW93bmVyc2hp
cCAtdSAteiIuCitUcnVzdCBTb3VyY2UgcHJvdmlkZXMgdGhlIHNvdXJjZSBvZiBzZWN1cml0eSBm
b3IgdGhlIFRydXN0ZWQgS2V5cywgb24gd2hpY2gKK2Jhc2lzIFRydXN0ZWQgS2V5cyBlc3RhYmxp
c2hlcyBhIFRydXN0IG1vZGVsIHdpdGggaXRzIHVzZXIuIEEgVHJ1c3QgU291cmNlIGNvdWxkCitk
aWZmZXIgZnJvbSBvbmUgc3lzdGVtIHRvIGFub3RoZXIgZGVwZW5kaW5nIG9uIGl0cyBzZWN1cml0
eSByZXF1aXJlbWVudHMuIEl0Citjb3VsZCBiZSBlaXRoZXIgYW4gb2ZmLWNoaXAgZGV2aWNlIG9y
IGFuIG9uLWNoaXAgZGV2aWNlLiBGb2xsb3dpbmcgc2VjdGlvbgorZGVtb3N0cmF0ZXMgYSBsaXN0
IG9mIHN1cHBvcnRlZCBkZXZpY2VzIGFsb25nIHdpdGggdGhlaXIgc2VjdXJpdHkgcHJvcGVydGll
cy8KK2d1YXJhbnRlZXM6CiAKLVRQTSAyLjAKLS0tLS0tLS0KKyAgKiAgUm9vdCBvZiB0cnVzdCBm
b3Igc3RvcmFnZQogCi1UaGUgdXNlciBtdXN0IGZpcnN0IGNyZWF0ZSBhIHN0b3JhZ2Uga2V5IGFu
ZCBtYWtlIGl0IHBlcnNpc3RlbnQsIHNvIHRoZSBrZXkgaXMKLWF2YWlsYWJsZSBhZnRlciByZWJv
b3QuIFRoaXMgY2FuIGJlIGRvbmUgdXNpbmcgdGhlIGZvbGxvd2luZyBjb21tYW5kcy4KKyAgICAg
KDEpIFRQTSAoVHJ1c3RlZCBQbGF0Zm9ybSBNb2R1bGU6IGhhcmR3YXJlIGRldmljZSkKKworICAg
ICAgICAgUm9vdGVkIHRvIFN0b3JhZ2UgUm9vdCBLZXkgKFNSSykgd2hpY2ggbmV2ZXIgbGVhdmVz
IHRoZSBUUE0gdGhhdAorICAgICAgICAgcHJvdmlkZXMgY3J5cHRvIG9wZXJhdGlvbiB0byBlc3Rh
Ymxpc2ggcm9vdCBvZiB0cnVzdCBmb3Igc3RvcmFnZS4KKworICAgICAoMikgVEVFIChUcnVzdGVk
IEV4ZWN1dGlvbiBFbnZpcm9ubWVudDogT1AtVEVFIGJhc2VkIG9uIEFybSBUcnVzdFpvbmUpCisK
KyAgICAgICAgIFJvb3RlZCB0byBIYXJkd2FyZSBVbmlxdWUgS2V5IChIVUspIHdoaWNoIGlzIGdl
bmVyYWxseSBidXJudCBpbiBvbi1jaGlwCisgICAgICAgICBmdXNlcyBhbmQgaXMgYWNjZXNzaWJs
ZSB0byBURUUgb25seS4KKworICAqICBFeGVjdXRpb24gaXNvbGF0aW9uCisKKyAgICAgKDEpIFRQ
TQorCisgICAgICAgICBGaXhlZCBzZXQgb2Ygb3BlcmF0aW9ucyBydW5uaW5nIGluIGlzb2xhdGVk
IGV4ZWN1dGlvbiBlbnZpcm9ubWVudC4KKworICAgICAoMikgVEVFCisKKyAgICAgICAgIEN1c3Rv
bWl6YWJsZSBzZXQgb2Ygb3BlcmF0aW9ucyBydW5uaW5nIGluIGlzb2xhdGVkIGV4ZWN1dGlvbgor
ICAgICAgICAgZW52aXJvbm1lbnQgdmVyaWZpZWQgdmlhIFNlY3VyZS9UcnVzdGVkIGJvb3QgcHJv
Y2Vzcy4KKworICAqIE9wdGlvbmFsIGJpbmRpbmcgdG8gcGxhdGZvcm0gaW50ZWdyaXR5IHN0YXRl
CisKKyAgICAgKDEpIFRQTQorCisgICAgICAgICBLZXlzIGNhbiBiZSBvcHRpb25hbGx5IHNlYWxl
ZCB0byBzcGVjaWZpZWQgUENSIChpbnRlZ3JpdHkgbWVhc3VyZW1lbnQpCisgICAgICAgICB2YWx1
ZXMsIGFuZCBvbmx5IHVuc2VhbGVkIGJ5IHRoZSBUUE0sIGlmIFBDUnMgYW5kIGJsb2IgaW50ZWdy
aXR5CisgICAgICAgICB2ZXJpZmljYXRpb25zIG1hdGNoLiBBIGxvYWRlZCBUcnVzdGVkIEtleSBj
YW4gYmUgdXBkYXRlZCB3aXRoIG5ldworICAgICAgICAgKGZ1dHVyZSkgUENSIHZhbHVlcywgc28g
a2V5cyBhcmUgZWFzaWx5IG1pZ3JhdGVkIHRvIG5ldyBQQ1IgdmFsdWVzLAorICAgICAgICAgc3Vj
aCBhcyB3aGVuIHRoZSBrZXJuZWwgYW5kIGluaXRyYW1mcyBhcmUgdXBkYXRlZC4gVGhlIHNhbWUg
a2V5IGNhbgorICAgICAgICAgaGF2ZSBtYW55IHNhdmVkIGJsb2JzIHVuZGVyIGRpZmZlcmVudCBQ
Q1IgdmFsdWVzLCBzbyBtdWx0aXBsZSBib290cyBhcmUKKyAgICAgICAgIGVhc2lseSBzdXBwb3J0
ZWQuCisKKyAgICAgKDIpIFRFRQorCisgICAgICAgICBSZWxpZXMgb24gU2VjdXJlL1RydXN0ZWQg
Ym9vdCBwcm9jZXNzIGZvciBwbGF0Zm9ybSBpbnRlZ3JpdHkuIEl0IGNhbgorICAgICAgICAgYmUg
ZXh0ZW5kZWQgd2l0aCBURUUgYmFzZWQgbWVhc3VyZWQgYm9vdCBwcm9jZXNzLgorCisgICogIE9u
LWNoaXAgdmVyc3VzIG9mZi1jaGlwCisKKyAgICAgKDEpIFRQTQorCisgICAgICAgICBPZmYtY2hp
cCBkZXZpY2UgY29ubmVjdGVkIHZpYSBzZXJpYWwgYnVzIChsaWtlIEkyQywgU1BJIGV0Yy4pIGV4
cG9zaW5nCisgICAgICAgICBwaHlzaWNhbCBhY2Nlc3Mgd2hpY2ggcmVwcmVzZW50cyBhbiBhdHRh
Y2sgc3VyZmFjZSB0aGF0IGNhbiBiZQorICAgICAgICAgbWl0aWdhdGVkIHZpYSB0YW1wZXIgZGV0
ZWN0aW9uLgorCisgICAgICgyKSBURUUKKworICAgICAgICAgT24tY2hpcCBmdW5jdGlvbmFsaXR5
LCBpbW11bmUgdG8gdGhpcyBhdHRhY2sgc3VyZmFjZS4KKworICAqICBNZW1vcnkgYXR0YWNrcyAo
RFJBTSBiYXNlZCBsaWtlIGF0dGFjaGluZyBhIGJ1cyBtb25pdG9yIGV0Yy4pCisKKyAgICAgKDEp
IFRQTQorCisgICAgICAgICBJbW11bmUgdG8gdGhlc2UgYXR0YWNrcyBhcyBpdCBkb2VzbuKAmXQg
bWFrZSB1c2Ugb2Ygc3lzdGVtIERSQU0uCisKKyAgICAgKDIpIFRFRQorCisgICAgICAgICBBbiBp
bXBsZW1lbnRhdGlvbiBiYXNlZCBvbiBUcnVzdFpvbmUgcHJvdGVjdGVkIERSQU0gaXMgc3VzY2Vw
dGlibGUgdG8KKyAgICAgICAgIHN1Y2ggYXR0YWNrcy4gSW4gb3JkZXIgdG8gbWl0aWdhdGUgdGhl
c2UgYXR0YWNrcyBvbmUgbmVlZHMgdG8gcmVseSBvbgorICAgICAgICAgb24tY2hpcCBzZWN1cmUg
UkFNIHRvIHN0b3JlIHNlY3JldHMgb3IgaGF2ZSB0aGUgZW50aXJlIFRFRQorICAgICAgICAgaW1w
bGVtZW50YXRpb24gYmFzZWQgb24gb24tY2hpcCBzZWN1cmUgUkFNLiBBbiBhbHRlcm5hdGl2ZSBt
aXRpZ2F0aW9uCisgICAgICAgICB3b3VsZCBiZSB0byB1c2UgZW5jcnlwdGVkIERSQU0uCisKKyAg
KiAgU2lkZS1jaGFubmVsIGF0dGFja3MgKGNhY2hlLCBtZW1vcnksIENQVSBvciB0aW1lIGJhc2Vk
KQorCisgICAgICgxKSBUUE0KKworICAgICAgICAgSW1tdW5lIHRvIHNpZGUtY2hhbm5lbCBhdHRh
Y2tzIGFzIGl0cyByZXNvdXJjZXMgYXJlIGlzb2xhdGVkIGZyb20gdGhlCisgICAgICAgICBtYWlu
IE9TLgorCisgICAgICgyKSBURUUKKworICAgICAgICAgQSBjYXJlZnVsIGltcGxlbWVudGF0aW9u
IGlzIHJlcXVpcmVkIHRvIG1pdGlnYXRlIGFnYWluc3QgdGhlc2UgYXR0YWNrcworICAgICAgICAg
Zm9yIHJlc291cmNlcyB3aGljaCBhcmUgc2hhcmVkIChlZy4gc2hhcmVkIG1lbW9yeSkgd2l0aCB0
aGUgbWFpbiBPUy4KKyAgICAgICAgIENhY2hlIGFuZCBDUFUgYmFzZWQgc2lkZS1jaGFubmVsIGF0
dGFja3MgY2FuIGJlIG1pdGlnYXRlZCB2aWEKKyAgICAgICAgIGludmFsaWRhdGluZyBjYWNoZXMg
YW5kIENQVSByZWdpc3RlcnMgZHVyaW5nIGNvbnRleHQgc3dpdGNoIHRvIGFuZCBmcm9tCisgICAg
ICAgICB0aGUgc2VjdXJlIHdvcmxkLgorICAgICAgICAgVG8gbWl0aWdhdGUgYWdhaW5zdCB0aW1l
IGJhc2VkIGF0dGFja3MsIG9uZSBuZWVkcyB0byBoYXZlIHRpbWUKKyAgICAgICAgIGludmFyaWFu
dCBpbXBsZW1lbnRhdGlvbnMgKGxpa2UgY3J5cHRvIGFsZ29yaXRobXMgZXRjLikuCisKKyAgKiAg
UmVzaXN0YW5jZSB0byBwaHlzaWNhbCBhdHRhY2tzIChwb3dlciBhbmFseXNpcywgZWxlY3Ryb21h
Z25ldGljIGVtYW5hdGlvbiwKKyAgICAgcHJvYmVzIGV0Yy4pCisKKyAgICAgKDEpIFRQTQorCisg
ICAgICAgICBQcm92aWRlcyBsaW1pdGVkIHByb3RlY3Rpb24gdXRpbGl6aW5nIHRhbXBlciByZXNp
c3RhbmNlLgorCisgICAgICgyKSBURUUKKworICAgICAgICAgUHJvdmlkZXMgbm8gcHJvdGVjdGlv
biBieSBpdHNlbGYsIHJlbGllcyBvbiB0aGUgdW5kZXJseWluZyBwbGF0Zm9ybSBmb3IKKyAgICAg
ICAgIGZlYXR1cmVzIHN1Y2ggYXMgdGFtcGVyIHJlc2lzdGFuY2UuCisKKworS2V5IEdlbmVyYXRp
b24KKz09PT09PT09PT09PT09CisKK1RydXN0ZWQgS2V5cworLS0tLS0tLS0tLS0tCisKK05ldyBr
ZXlzIGFyZSBjcmVhdGVkIGZyb20gdHJ1c3Qgc291cmNlIGdlbmVyYXRlZCByYW5kb20gbnVtYmVy
cywgYW5kIGFyZQorZW5jcnlwdGVkL2RlY3J5cHRlZCB1c2luZyB0cnVzdCBzb3VyY2Ugc3RvcmFn
ZSByb290IGtleS4KKworICAqICBUUE0gKGhhcmR3YXJlIGRldmljZSkgYmFzZWQgUk5HCisKKyAg
ICAgU3RyZW5ndGggb2YgcmFuZG9tIG51bWJlcnMgbWF5IHZhcnkgZnJvbSBvbmUgZGV2aWNlIG1h
bnVmYWN0dXJlciB0bworICAgICBhbm90aGVyLgorCisgICogIFRFRSAoT1AtVEVFIGJhc2VkIG9u
IEFybSBUcnVzdFpvbmUpIGJhc2VkIFJORworCisgICAgIFJORyBpcyBjdXN0b21pemFibGUgYXMg
cGVyIHBsYXRmb3JtIG5lZWRzLiBJdCBjYW4gZWl0aGVyIGJlIGRpcmVjdCBvdXRwdXQKKyAgICAg
ZnJvbSBwbGF0Zm9ybSBzcGVjaWZpYyBoYXJkd2FyZSBSTkcgb3IgYSBzb2Z0d2FyZSBiYXNlZCBG
b3J0dW5hIENTUFJORworICAgICB3aGljaCBjYW4gYmUgc2VlZGVkIHZpYSBtdWx0aXBsZSBlbnRy
b3B5IHNvdXJjZXMuCisKK0VuY3J5cHRlZCBLZXlzCistLS0tLS0tLS0tLS0tLQorCitFbmNyeXB0
ZWQga2V5cyBkbyBub3QgZGVwZW5kIG9uIGEgdHJ1c3Qgc291cmNlLCBhbmQgYXJlIGZhc3Rlciwg
YXMgdGhleSB1c2UgQUVTCitmb3IgZW5jcnlwdGlvbi9kZWNyeXB0aW9uLiBOZXcga2V5cyBhcmUg
Y3JlYXRlZCBmcm9tIGtlcm5lbCBnZW5lcmF0ZWQgcmFuZG9tCitudW1iZXJzLCBhbmQgYXJlIGVu
Y3J5cHRlZC9kZWNyeXB0ZWQgdXNpbmcgYSBzcGVjaWZpZWQg4oCYbWFzdGVy4oCZIGtleS4gVGhl
CivigJhtYXN0ZXLigJkga2V5IGNhbiBlaXRoZXIgYmUgYSB0cnVzdGVkLWtleSBvciB1c2VyLWtl
eSB0eXBlLiBUaGUgbWFpbiBkaXNhZHZhbnRhZ2UKK29mIGVuY3J5cHRlZCBrZXlzIGlzIHRoYXQg
aWYgdGhleSBhcmUgbm90IHJvb3RlZCBpbiBhIHRydXN0ZWQga2V5LCB0aGV5IGFyZSBvbmx5Cith
cyBzZWN1cmUgYXMgdGhlIHVzZXIga2V5IGVuY3J5cHRpbmcgdGhlbS4gVGhlIG1hc3RlciB1c2Vy
IGtleSBzaG91bGQgdGhlcmVmb3JlCitiZSBsb2FkZWQgaW4gYXMgc2VjdXJlIGEgd2F5IGFzIHBv
c3NpYmxlLCBwcmVmZXJhYmx5IGVhcmx5IGluIGJvb3QuCisKKworVXNhZ2UKKz09PT09CisKK1Ry
dXN0ZWQgS2V5cyB1c2FnZTogVFBNCistLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQorCitUUE0gMS4y
OiBCeSBkZWZhdWx0LCB0cnVzdGVkIGtleXMgYXJlIHNlYWxlZCB1bmRlciB0aGUgU1JLLCB3aGlj
aCBoYXMgdGhlCitkZWZhdWx0IGF1dGhvcml6YXRpb24gdmFsdWUgKDIwIHplcm9zKS4gIFRoaXMg
Y2FuIGJlIHNldCBhdCB0YWtlb3duZXJzaGlwIHRpbWUKK3dpdGggdGhlIFRyb3VTZXJTIHV0aWxp
dHk6ICJ0cG1fdGFrZW93bmVyc2hpcCAtdSAteiIuCisKK1RQTSAyLjA6IFRoZSB1c2VyIG11c3Qg
Zmlyc3QgY3JlYXRlIGEgc3RvcmFnZSBrZXkgYW5kIG1ha2UgaXQgcGVyc2lzdGVudCwgc28gdGhl
CitrZXkgaXMgYXZhaWxhYmxlIGFmdGVyIHJlYm9vdC4gVGhpcyBjYW4gYmUgZG9uZSB1c2luZyB0
aGUgZm9sbG93aW5nIGNvbW1hbmRzLgogCiBXaXRoIHRoZSBJQk0gVFNTIDIgc3RhY2s6OgogCkBA
IC03OSwxNCArMjEwLDIxIEBAIFRQTV9TVE9SRURfREFUQSBmb3JtYXQuICBUaGUga2V5IGxlbmd0
aCBmb3IgbmV3IGtleXMgYXJlIGFsd2F5cyBpbiBieXRlcy4KIFRydXN0ZWQgS2V5cyBjYW4gYmUg
MzIgLSAxMjggYnl0ZXMgKDI1NiAtIDEwMjQgYml0cyksIHRoZSB1cHBlciBsaW1pdCBpcyB0byBm
aXQKIHdpdGhpbiB0aGUgMjA0OCBiaXQgU1JLIChSU0EpIGtleWxlbmd0aCwgd2l0aCBhbGwgbmVj
ZXNzYXJ5IHN0cnVjdHVyZS9wYWRkaW5nLgogCi1FbmNyeXB0ZWQga2V5cyBkbyBub3QgZGVwZW5k
IG9uIGEgVFBNLCBhbmQgYXJlIGZhc3RlciwgYXMgdGhleSB1c2UgQUVTIGZvcgotZW5jcnlwdGlv
bi9kZWNyeXB0aW9uLiAgTmV3IGtleXMgYXJlIGNyZWF0ZWQgZnJvbSBrZXJuZWwgZ2VuZXJhdGVk
IHJhbmRvbQotbnVtYmVycywgYW5kIGFyZSBlbmNyeXB0ZWQvZGVjcnlwdGVkIHVzaW5nIGEgc3Bl
Y2lmaWVkICdtYXN0ZXInIGtleS4gIFRoZQotJ21hc3Rlcicga2V5IGNhbiBlaXRoZXIgYmUgYSB0
cnVzdGVkLWtleSBvciB1c2VyLWtleSB0eXBlLiAgVGhlIG1haW4KLWRpc2FkdmFudGFnZSBvZiBl
bmNyeXB0ZWQga2V5cyBpcyB0aGF0IGlmIHRoZXkgYXJlIG5vdCByb290ZWQgaW4gYSB0cnVzdGVk
IGtleSwKLXRoZXkgYXJlIG9ubHkgYXMgc2VjdXJlIGFzIHRoZSB1c2VyIGtleSBlbmNyeXB0aW5n
IHRoZW0uICBUaGUgbWFzdGVyIHVzZXIga2V5Ci1zaG91bGQgdGhlcmVmb3JlIGJlIGxvYWRlZCBp
biBhcyBzZWN1cmUgYSB3YXkgYXMgcG9zc2libGUsIHByZWZlcmFibHkgZWFybHkgaW4KLWJvb3Qu
CitUcnVzdGVkIEtleXMgdXNhZ2U6IFRFRQorLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KKworVXNh
Z2U6OgorCisgICAga2V5Y3RsIGFkZCB0cnVzdGVkIG5hbWUgIm5ldyBrZXlsZW4iIHJpbmcKKyAg
ICBrZXljdGwgYWRkIHRydXN0ZWQgbmFtZSAibG9hZCBoZXhfYmxvYiIgcmluZworICAgIGtleWN0
bCBwcmludCBrZXlpZAorCisia2V5Y3RsIHByaW50IiByZXR1cm5zIGFuIGFzY2lpIGhleCBjb3B5
IG9mIHRoZSBzZWFsZWQga2V5LCB3aGljaCBpcyBpbiBmb3JtYXQKK3NwZWNpZmljIHRvIFRFRSBk
ZXZpY2UgaW1wbGVtZW50YXRpb24uICBUaGUga2V5IGxlbmd0aCBmb3IgbmV3IGtleXMgYXJlIGFs
d2F5cworaW4gYnl0ZXMuIFRydXN0ZWQgS2V5cyBjYW4gYmUgMzIgLSAxMjggYnl0ZXMgKDI1NiAt
IDEwMjQgYml0cykuCisKK0VuY3J5cHRlZCBLZXlzIHVzYWdlCistLS0tLS0tLS0tLS0tLS0tLS0t
LQogCiBUaGUgZGVjcnlwdGVkIHBvcnRpb24gb2YgZW5jcnlwdGVkIGtleXMgY2FuIGNvbnRhaW4g
ZWl0aGVyIGEgc2ltcGxlIHN5bW1ldHJpYwoga2V5IG9yIGEgbW9yZSBjb21wbGV4IHN0cnVjdHVy
ZS4gVGhlIGZvcm1hdCBvZiB0aGUgbW9yZSBjb21wbGV4IHN0cnVjdHVyZSBpcwpAQCAtMTA0LDgg
KzI0Miw4IEBAIFdoZXJlOjoKIAlmb3JtYXQ6PSAnZGVmYXVsdCB8IGVjcnlwdGZzIHwgZW5jMzIn
CiAJa2V5LXR5cGU6PSAndHJ1c3RlZCcgfCAndXNlcicKIAotCiBFeGFtcGxlcyBvZiB0cnVzdGVk
IGFuZCBlbmNyeXB0ZWQga2V5IHVzYWdlOgorLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KIAogQ3JlYXRlIGFuZCBzYXZlIGEgdHJ1c3RlZCBrZXkgbmFtZWQgImtt
ayIgb2YgbGVuZ3RoIDMyIGJ5dGVzLgogCkBAIC0xNTEsNyArMjg5LDcgQEAgTG9hZCBhIHRydXN0
ZWQga2V5IGZyb20gdGhlIHNhdmVkIGJsb2I6OgogICAgIGYxZjhmZmYwM2FkMGFjYjA4MzcyNTUz
NTYzNmFkZGIwOGQ3M2RlZGI5ODMyZGExOTgwODFlNWRlYWU4NGJmYWYwNDA5YzIyYgogICAgIGU0
YThhZWEyYjYwN2VjOTY5MzFlNmY0ZDRmZTU2M2JhCiAKLVJlc2VhbCBhIHRydXN0ZWQga2V5IHVu
ZGVyIG5ldyBwY3IgdmFsdWVzOjoKK1Jlc2VhbCAoVFBNIHNwZWNpZmljKSBhIHRydXN0ZWQga2V5
IHVuZGVyIG5ldyBQQ1IgdmFsdWVzOjoKIAogICAgICQga2V5Y3RsIHVwZGF0ZSAyNjg3Mjg4MjQg
InVwZGF0ZSBwY3JpbmZvPWBjYXQgcGNyLmJsb2JgIgogICAgICQga2V5Y3RsIHByaW50IDI2ODcy
ODgyNApAQCAtMTY1LDExICszMDMsMTIgQEAgUmVzZWFsIGEgdHJ1c3RlZCBrZXkgdW5kZXIgbmV3
IHBjciB2YWx1ZXM6OgogICAgIDdlZjZhMjRkZWZlNDg0NjEwNDIwOWJmMGMzZWNlZDdmYTFhNjcy
ZWQ1YjEyNWZjOWQ4Y2Q4OGI0NzZhNjU4YTQ0MzQ2NDRlZgogICAgIGRmOGFlOWExNzhlOWY4M2Jh
OWYwOGQxMGZhNDdlNDIyNmI5OGIwNzAyZjA2YjNiOAogCisKIFRoZSBpbml0aWFsIGNvbnN1bWVy
IG9mIHRydXN0ZWQga2V5cyBpcyBFVk0sIHdoaWNoIGF0IGJvb3QgdGltZSBuZWVkcyBhIGhpZ2gK
LXF1YWxpdHkgc3ltbWV0cmljIGtleSBmb3IgSE1BQyBwcm90ZWN0aW9uIG9mIGZpbGUgbWV0YWRh
dGEuICBUaGUgdXNlIG9mIGEKK3F1YWxpdHkgc3ltbWV0cmljIGtleSBmb3IgSE1BQyBwcm90ZWN0
aW9uIG9mIGZpbGUgbWV0YWRhdGEuIFRoZSB1c2Ugb2YgYQogdHJ1c3RlZCBrZXkgcHJvdmlkZXMg
c3Ryb25nIGd1YXJhbnRlZXMgdGhhdCB0aGUgRVZNIGtleSBoYXMgbm90IGJlZW4KLWNvbXByb21p
c2VkIGJ5IGEgdXNlciBsZXZlbCBwcm9ibGVtLCBhbmQgd2hlbiBzZWFsZWQgdG8gc3BlY2lmaWMg
Ym9vdCBQQ1IKLXZhbHVlcywgcHJvdGVjdHMgYWdhaW5zdCBib290IGFuZCBvZmZsaW5lIGF0dGFj
a3MuICBDcmVhdGUgYW5kIHNhdmUgYW4KK2NvbXByb21pc2VkIGJ5IGEgdXNlciBsZXZlbCBwcm9i
bGVtLCBhbmQgd2hlbiBzZWFsZWQgdG8gYSBwbGF0Zm9ybSBpbnRlZ3JpdHkKK3N0YXRlLCBwcm90
ZWN0cyBhZ2FpbnN0IGJvb3QgYW5kIG9mZmxpbmUgYXR0YWNrcy4gQ3JlYXRlIGFuZCBzYXZlIGFu
CiBlbmNyeXB0ZWQga2V5ICJldm0iIHVzaW5nIHRoZSBhYm92ZSB0cnVzdGVkIGtleSAia21rIjoK
IAogb3B0aW9uIDE6IG9taXR0aW5nICdmb3JtYXQnOjoKLS0gCjIuNy40CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
