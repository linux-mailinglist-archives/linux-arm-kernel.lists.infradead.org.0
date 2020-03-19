Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BF418AA38
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 02:11:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=unxrMxlxKit/wBybJEJ8ME5DLOycoK7q2mtdAeEjrJk=; b=qu80uoHt+iT+i0
	tEJCOca9LXmCRBe9lYfEIQyd2MxSUhoxpqwKr7L+ys7uxY7GebzjiPlaWFs8ytt/AJGqk6ttj30k4
	r7vJq6ZDyPbLSNt5l8Xsrh+cS898OO92Pi0XCmJzKonrfqMSfYJdXjtZRnqP7AKPIP87VhemCYGG1
	cOafuvRLUG4ZF1ytYICdHRuNx/2RgVD9p6qhETZYKmCrqPr6n+of3NWo/JmQkZcMX5ur5Rqu8w6+8
	8LDgT0tDDoocyeiIkhKdYNofjU6H5kF67LVbc6oZCMvEsMLEt5wXR46t9nTNqaU/nCQMkGAs3Bi+D
	aaTSdq2kbkzHiz+LIUdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEjii-0003jX-CO; Thu, 19 Mar 2020 01:11:36 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEjiX-0003hg-Bj
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 01:11:27 +0000
Received: by mail-pl1-x636.google.com with SMTP id f16so287930plj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 18:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=pvlVGuy8I5M4aISqtRmP/fVwpcqMhjpDaSrBCF1NYFc=;
 b=GllHW8A4h1Dx1iXquh8hiMXCkN4N9zSxoJ6e3DUfmONfJ2oJQh06xdg5+V5jJ15vt9
 r/3ENzgJvnwqgd8NZnfe2ZvmYLYYpWf06690yFzK5QczSWeU0j7hOFInDzObkTkQxnh7
 LKzkRQidFyw4DnvHtBaikiO96OY8LnvlvlfBerlhq0vJOfWnxjAOLzxUBwGHVzCaBUwn
 Rzy3rs29zRiF+YPGvlSdfUkyLjtJQ84Vy0XIr7R+gFzOANPGAidmpHPCgXrXrqVuTiJk
 VQOiUXcwiPzSvkhtZzRImON5q2eF46TpruzyuTt3yZBENi/EO+aSHy6EwXZGidu/i3fb
 KMWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=pvlVGuy8I5M4aISqtRmP/fVwpcqMhjpDaSrBCF1NYFc=;
 b=OMlq2x4csv1VpQhPokRpf4tdED1cxaW61FYPcwGCJrH40j4DodawgYWfPi66hUmfuw
 kyc4yLsyAHjmrZV2gE8cWVUKiYlUpemxyTBqJ2FKGyZQaasQbUIO1bnOfzrxLKFaQHY0
 CDIwU4nh10CR03+zWTbMuFbOLZLQJSM695J0ouAMykT0G52+zJ77ZIJSqLr+lNMJIUnk
 CJ7ygqSDcsOkTXFf3pWCu0tZLVeX7FWSGGD8VMz7Uq/quauvTUfMvTb3wMheuPbE3NuM
 HxTmqTuidXiAqmXtZIOGZoXQXBexRgnpJdFTypZh2ZfQtqQved1xNrZRmZ5C/eCUMEG/
 80vA==
X-Gm-Message-State: ANhLgQ1XQ5esQF3Qo/NH27EmlG+veEzdwXVSzyd0FXitErkmysB6TWMh
 9M3VIH48qNkyLHDPsCrW4jrpNg==
X-Google-Smtp-Source: ADFU+vvnuJwUjDmtP2hr+Vd8z2fb/4zo8Xd7R9IX/ToargwDLwNin3NYypclrJPToVP4UKsSJWHGMw==
X-Received: by 2002:a17:90a:7309:: with SMTP id
 m9mr1050499pjk.52.1584580283678; 
 Wed, 18 Mar 2020 18:11:23 -0700 (PDT)
Received: from [10.0.9.4] ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id c128sm229325pfa.11.2020.03.18.18.11.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 18:11:22 -0700 (PDT)
Message-ID: <5e72c6ba.1c69fb81.6f9a5.1caf@mx.google.com>
Date: Wed, 18 Mar 2020 18:11:22 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.6-rc6-97-g825596c5c10b
X-Kernelci-Report-Type: build
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.6-rc6-97-g825596c5c10b)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_181125_402226_B9CC34E2 
X-CRM114-Status: UNSURE (   4.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
 [list.dnswl.org]
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

YXJtNjQvZm9yLWtlcm5lbGNpIGJ1aWxkOiAzIGJ1aWxkczogMCBmYWlsZWQsIDMgcGFzc2VkICh2
NS42LXJjNi05Ny1nODI1NTk2YzVjMTBiKQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBodHRwczovL2tl
cm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5lbC92NS42LXJj
Ni05Ny1nODI1NTk2YzVjMTBiLwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2VybmVsY2kKR2l0
IERlc2NyaWJlOiB2NS42LXJjNi05Ny1nODI1NTk2YzVjMTBiCkdpdCBDb21taXQ6IDgyNTU5NmM1
YzEwYjBmNDA5MzE4MWJkYzhlN2I0ZmJjODYyMjg3NDMKR2l0IFVSTDogaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXguZ2l0CkJ1aWx0OiAx
IHVuaXF1ZSBhcmNoaXRlY3R1cmUKCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpEZXRhaWxlZCBw
ZXItZGVmY29uZmlnIGJ1aWxkIHJlcG9ydHM6CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQphbGxt
b2Rjb25maWcgKGFybTY0LCBnY2MtOCkg4oCUIFBBU1MsIDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAw
IHNlY3Rpb24gbWlzbWF0Y2hlcwoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KYWxsbm9jb25maWcg
KGFybTY0LCBnY2MtOCkg4oCUIFBBU1MsIDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAwIHNlY3Rpb24g
bWlzbWF0Y2hlcwoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KZGVmY29uZmlnIChhcm02NCwgZ2Nj
LTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBzZWN0aW9uIG1pc21hdGNoZXMK
Ci0tLQpGb3IgbW9yZSBpbmZvIHdyaXRlIHRvIDxpbmZvQGtlcm5lbGNpLm9yZz4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
