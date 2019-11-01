Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 156D8ECA15
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 22:00:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QvLpBaAdP2ZAU+Aio76oitl8LeHgMxJkMnJKbJFXHnc=; b=mABB6OialeoPRj
	tkBp4T7oITiUjppHMxIFLfsoPmoh45I03unEANeoj81m7t0GiBCbhqrJ1LYDLilx1I18M2TuVqj50
	Rm6kVR8hWuDLxr5jBXx9U/Re5OBroPYN5RzK9+I9t5cJ27m7uZ36j16DDjzb3tdaVQYhuKHXFX1Qc
	mhtZ8Ajc5SY2c5kXrAOlajdsfsmzICH+8pWpHp7vGKwn5AFwDi/ZL+/jN2Nv6z4myfn6zbo8w+E7R
	79fdOPT0GsSsSQY0S9HCFV5UARvC7gP6gg57TpVsAlAuN72wTvPIb6c4QioF1hLkFNVBEkacj0mmt
	hVCadCu2T5AheSE+ggEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQe2M-0008Ah-01; Fri, 01 Nov 2019 21:00:50 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQe2F-0008AF-Tu
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 21:00:45 +0000
Received: by mail-wr1-x430.google.com with SMTP id a11so10827831wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 14:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=3lIwrehgwgh/C8q18Q8PiQUw2fBkBBEfmaY7zA7est0=;
 b=yy5+VVviCKBmYOiAb4I1LuBujTsX42eyCkIHjoUMuAude79LFPNAvxHAUVpZiLvxT+
 0mbDeXnqfBV076KP8CfZPZh5jqoWjNroXqreNsWntEHhkeRn2y5/bO0DCw1bFqIqqyTH
 5t/kQp/IBjRJd3HNztvC74kJmn3oP/mwdKVMcWL3tDVYTIzRuHG0GFpHSF3CWWvlmEdK
 LPjJqmaQdgLZpHn+eajqZLdqzhTaDrKAUme/7ySwNfg2F+juw28ByKqu83M9MLHeFrVk
 ssz/x54CnmD5kJbLPSNMiiLkCoB+MOX9A4Gf8p5Fre4n0X27M8gezO2pDZXsRv0BquXn
 XtMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=3lIwrehgwgh/C8q18Q8PiQUw2fBkBBEfmaY7zA7est0=;
 b=dPZJTSVmZPEqQeulYrZVkgqEiI/l5/ZMUVHFoSEzmCB/Yo2bIL4EGtT/6JRzZRpPjt
 +n2DZGtDClB1ETOXeEBMCQNv7/Apy6k2k43W96sCQqZR8ob2LHFTBi86fmhGfVtmMHj+
 Ng+E5atudFfXg4csl0Hg4zrmiyJjnAe9nhM2FiJSFzAw4hzxJmyxquA0ZJlAfQ+1j+2O
 JKv2QQS3xsC71Etsc5YapfCQcBhxvsy747ky93S/SodS2Vwy9qiR2Y6lz5u53UIM98Yu
 43Cp2mbezWZxi0/erglCJTqmhdb5gNhFjsFA/lT8n5bKVix3KwsnaLmoTm5QHVQA4IOO
 ePhQ==
X-Gm-Message-State: APjAAAXKYJvycgC4WSFy2goCDEClvG7NjumWcW6bta05VoFsb8in0v3g
 nHrNZvg/9HOlDKdr0+WCbPMW2w==
X-Google-Smtp-Source: APXvYqzdv1gioZOyAfBQsegekV0699M0kI+ZaVRCH/n1adHjUZlZViyZDrRodpvMmHlq7PAPqWoP9A==
X-Received: by 2002:a5d:694d:: with SMTP id r13mr11637214wrw.395.1572642039233; 
 Fri, 01 Nov 2019 14:00:39 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id u203sm3025714wme.34.2019.11.01.14.00.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 14:00:38 -0700 (PDT)
Message-ID: <5dbc9cf6.1c69fb81.7f1dc.df20@mx.google.com>
Date: Fri, 01 Nov 2019 14:00:38 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: v5.4-rc5-74-g07d0b0abb45b
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.4-rc5-74-g07d0b0abb45b)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org,
 gtucker@collabora.com
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_140044_024204_247553C3 
X-CRM114-Status: UNSURE (   4.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YXJtNjQvZm9yLWtlcm5lbGNpIGJ1aWxkOiAzIGJ1aWxkczogMCBmYWlsZWQsIDMgcGFzc2VkICh2
NS40LXJjNS03NC1nMDdkMGIwYWJiNDViKQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBodHRwczovL2tl
cm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5lbC92NS40LXJj
NS03NC1nMDdkMGIwYWJiNDViLwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2VybmVsY2kKR2l0
IERlc2NyaWJlOiB2NS40LXJjNS03NC1nMDdkMGIwYWJiNDViCkdpdCBDb21taXQ6IDA3ZDBiMGFi
YjQ1YjMxOGZkOGU4ZjlhMzc2M2QzMzAxYzNmNjcwMzIKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdApCdWlsdDogMSB1
bmlxdWUgYXJjaGl0ZWN0dXJlCgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKRGV0YWlsZWQgcGVy
LWRlZmNvbmZpZyBidWlsZCByZXBvcnRzOgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KYWxsbW9k
Y29uZmlnIChhcm02NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBz
ZWN0aW9uIG1pc21hdGNoZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmFsbG5vY29uZmlnIChh
cm02NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBzZWN0aW9uIG1p
c21hdGNoZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmRlZmNvbmZpZyAoYXJtNjQsIGdjYy04
KSDigJQgUEFTUywgMCBlcnJvcnMsIDAgd2FybmluZ3MsIDAgc2VjdGlvbiBtaXNtYXRjaGVzCgot
LS0KRm9yIG1vcmUgaW5mbyB3cml0ZSB0byA8aW5mb0BrZXJuZWxjaS5vcmc+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
