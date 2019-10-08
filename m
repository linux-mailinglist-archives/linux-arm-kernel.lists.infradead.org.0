Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CFBCF668
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 11:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xm51+rDajArUY1Vlmrprg6ct3x+cgBCNkPYf3IHC7cg=; b=G9QJtUafHfwmAk
	ruID3wTVauXcdI9cO7G4/2QWdJwJWznf3rktvN1K6WRK+gQmVLsavO0LrH+XYKg9b/jwmbArKmDAS
	AtoXjPmsUaAYwVzDvz/UgCrb0Xad0dqJVKeAY6M1RhujMQ1MadgKPsnv/LRvwWsusBfgO6+bZPgWn
	tQR8/bVXHb0p7l4T8xL6T2QoZX/P9W6UXum3HepEqIf9nE4k2P++y9VimC0pn1mvnKNTj9qlVbrEk
	VAHlIGXW+LQsnwiKTSwcZ4+6J2Vf3D8tin7yFP49gMAeZDQHMGKmRJkc4R+DPPDqYRQADyMCHV7eT
	Dz56xBt7EdN9r0cKjDhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHm5n-0001OW-85; Tue, 08 Oct 2019 09:47:43 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHm5d-0001MV-4j
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 09:47:34 +0000
Received: by mail-qk1-x742.google.com with SMTP id z67so16000371qkb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 02:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=qLgfnJa8TF+fqJn6Csm2aNbaRpOd4zDzxzOPf12HbGU=;
 b=cXYZ/yJKZHxhLdFc+J/7aqzW3aWMwrEzbFfkVK6b2STx6QHscvIWH7imnBEe4+5hu8
 /u0EZHWjyQPT1nvtbEF/Q0Kg9i/YqCDMse7zLQQlF9qvnZzDAYO5lv25xZR6t9BXHcuq
 ah+dWBDMRgaikW+rvVfyvyISzE+jZZi8EytVeEJcb33yP6AZXWRPX4ij4dNNh6n//HA4
 ZeX5K7IRgHSrqr/EWrbf7Id2OL3sA+Y9zt+wp0c875bq5Eka/sHOIgqCnKbwSuEhZiRH
 Ywn2sJjbAl32mBITdW2nABbm8slhsaxFggyDU0O6KlXeMgbBlIYIBTgAtq0NFFUY9INh
 Kx7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=qLgfnJa8TF+fqJn6Csm2aNbaRpOd4zDzxzOPf12HbGU=;
 b=A6UsIXCI78dTkoDHy8JTNFlqh9e/gILzJhPRzwk/voTS7XhALLwcngesq9BsaEqYzL
 9wDL+68Og2NJ2ocPbsSiWSd1UMlnM7ijjKjl+EWsFF/7M35HFiV8mN5dyPUT14dx7s7L
 uVvDFSFeU4VzbsdDhDz/G/luGbo1oDiKvyPhNE3RjKuFR4DwU+AqXldCPHlfwFGZP10+
 TUB/4hesmRx0bmQpOiW1+8H+YbsCOgvYq4WOJ+DCqdI23kTPqM8IBzNqqmuDmL390M7g
 hQksoiGYkUtffSX3Nb3YpdRAxelzZ2WhvDNa25pVUBAvZkqjo1795y9f9PkFcb09qomD
 ZISw==
X-Gm-Message-State: APjAAAW2/8LBpJZS0cXhmr1mGBsqA+n593gMr6weKvmdjBYvBlbK+H6c
 j1hz8//d9amONLZGtw3uOpdyjQ==
X-Google-Smtp-Source: APXvYqxfD11gEiq1MLqW9BfGOXUQNepLHs6yxjwdSPwZov/5cEt3QgQYUXTBcN37CEYZ7nm6dUXSjQ==
X-Received: by 2002:a37:4d4a:: with SMTP id a71mr28591867qkb.327.1570528051524; 
 Tue, 08 Oct 2019 02:47:31 -0700 (PDT)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id h68sm8988573qkd.35.2019.10.08.02.47.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2019 02:47:30 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
Date: Tue, 8 Oct 2019 05:47:30 -0400
Message-Id: <B53A3CC0-CEA6-4E1C-BC38-19315D949F38@lca.pw>
References: <1570515358.4686.97.camel@mtksdccf07>
In-Reply-To: <1570515358.4686.97.camel@mtksdccf07>
To: Walter Wu <walter-zh.wu@mediatek.com>
X-Mailer: iPhone Mail (17A860)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_024733_181579_D7E74F22 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIE9jdCA4LCAyMDE5LCBhdCAyOjE2IEFNLCBXYWx0ZXIgV3UgPHdhbHRlci16aC53dUBt
ZWRpYXRlay5jb20+IHdyb3RlOgo+IAo+IEl0IGlzIGFuIHVuZGVmaW5lZCBiZWhhdmlvciB0byBw
YXNzIGEgbmVnYXRpdmUgbnVtYmVycyB0bwo+ICAgIG1lbXNldCgpL21lbWNweSgpL21lbW1vdmUo
KSwgc28gbmVlZCB0byBiZSBkZXRlY3RlZCBieSBLQVNBTi4KCldoeSBjYW7igJl0IHRoaXMgYmUg
ZGV0ZWN0ZWQgYnkgVUJTQU4/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
