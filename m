Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB6A1D8B5B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 01:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+23W1FdnzJN1DE9QHdT7tgNXda62XXmoAGfO5PrZx4=; b=rUGljWLctPGUK8
	E4321hj53UfOr6xhxZw0M7dyTENi3MiIom/Simasx8jNwROoood6ZDQo+a2YQydJuiG37awJ+TLM0
	pvsJzt9VGlo7rd3ZBCtGWbiMVtm9Irjglv01KYU9TzGVnGFiZunxGKZPi2agVQ77vlJ+pH/wpFzSb
	XcA0F1iVvFCfiEncPR5l38t9lOTqgLojfPlr/3t0ojhj9xHeTGW3wHNX5HIQa5FWxD2WfHj/2gOqY
	WoRL5L1lVzGqNMrcVtBREZyST0IUJ0IIEvtbcdtffwZruh18I2/uwnbZa/w/JKd0y3d0N+AXGjPlL
	HCnmVn6DVn0il6JVQuoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaooB-0008KX-2o; Mon, 18 May 2020 23:04:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaonw-0008In-KC
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 23:04:20 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3A93207ED;
 Mon, 18 May 2020 23:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589843056;
 bh=vTTgvB3JUjULE7uYpMa6wmTcpdP6w+Gge17Ze+4Iieg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=z1iP9xOGKusy7dXpZxmij9FsdSXHE/iAuAUadwQPy4Kgpj8W+sCDMtIsxLC0SX18j
 s1JHrjl8jEQEUtnsVVs8QJofrVz/k0mYVBS9pyPH1y04FT4PMi6RpLzIc+y4NiF8xg
 5jC0xa2bWfrTRV4w8bxA0PAdrb3QU6aP/cTKxwSo=
From: Will Deacon <will@kernel.org>
To: joro@8bytes.org, robin.murphy@arm.com, Chen Zhou <chenzhou10@huawei.com>
Subject: Re: [PATCH -next] iommu/arm-smmu-v3: remove set but not used variable
 'smmu'
Date: Tue, 19 May 2020 00:04:03 +0100
Message-Id: <158981035268.232610.8507071130600467853.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508014955.87630-1-chenzhou10@huawei.com>
References: <20200508014955.87630-1-chenzhou10@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_160416_680095_82E95C98 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: catalin.marinas@arm.com, iommu@lists.linux-foundation.org,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCA4IE1heSAyMDIwIDA5OjQ5OjU1ICswODAwLCBDaGVuIFpob3Ugd3JvdGU6Cj4gRml4
ZXMgZ2NjICctV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlJyB3YXJuaW5nOgo+IAo+IGRyaXZlcnMv
aW9tbXUvYXJtLXNtbXUtdjMuYzoyOTg5OjI2Ogo+IHdhcm5pbmc6IHZhcmlhYmxlIOKAmHNtbXXi
gJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPiAgIHN0cnVj
dCBhcm1fc21tdV9kZXZpY2UgKnNtbXU7CgpBcHBsaWVkIHRvIHdpbGwgKGZvci1qb2VyZy9hcm0t
c21tdS91cGRhdGVzKSwgdGhhbmtzIQoKWzEvMV0gaW9tbXUvYXJtLXNtbXUtdjM6IHJlbW92ZSBz
ZXQgYnV0IG5vdCB1c2VkIHZhcmlhYmxlICdzbW11JwogICAgICBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3dpbGwvYy8wNjAyMDE5NmM4MmUKCkNoZWVycywKLS0gCldpbGwKCmh0dHBzOi8vZml4ZXMu
YXJtNjQuZGV2Cmh0dHBzOi8vbmV4dC5hcm02NC5kZXYKaHR0cHM6Ly93aWxsLmFybTY0LmRldgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
