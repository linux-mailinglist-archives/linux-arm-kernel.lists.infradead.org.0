Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6F41FD4A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 20:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Yj6p44Os+p+fMwn6cgF7UkY44pR7FZVVFsU/mULuzw=; b=CUGUyiNkJdQE04
	+ic13YRFIY/L00/uOW/O111V+6SF1mUXE+qtR/phUHEOjA5p/zOe4MGn0nQHgW4Ca9S+ln44m6F+i
	3mqIcBVikLvCTXuHpCfS+pQwavBC3R9h9oeRKM+0IBOQgPfkkiBrNO4Vwf0ZGhKN9+A9aFzXnn8qR
	ZNrjSHWEI0Sn48oN9cPEmJ0Gbr3MMT/CyAq61GH/aLVBPDjaX69n6fZLTpTM6EHPQ0L6Ki0FEkrAh
	EZNTM/3UcmZk/HT3xiZelLhNyt3HbZny97hTqqC/BFElvmdByRRHmhpjgEXNJym/k4nQtlqjLlG05
	cwoHXBedrP1X5FJQDI0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlcx0-0007ke-KW; Wed, 17 Jun 2020 18:38:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlcws-0007k5-0z
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 18:38:11 +0000
Received: by mail-pf1-x444.google.com with SMTP id x22so1567635pfn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 11:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=ffs69XwESOzXBxIqtmTJBzG8E5wzXjrjGu3Cpe3aCFg=;
 b=p2Csrcas928ntJHioLlaSzkVTCMVObXx8PblM/2dNSOTa1d5bU/YTaMj2N5OJVBMUZ
 xb9aLaparpo02fXPCQhSZ0vE2dZNX3YE8X0ZBeOs3qpyBu+0u1V9+AvtTnhl1BU+SMLS
 OLMyYLqCFwlemq4xN+JPMlVAUlr4ABRWa0Kbsg94oCz6R7xV00UquGs1KiXU1O1yUGd3
 keRqkWoZ3gbZFgTNklxgCGwznZxm8L2bTOvJ1cigYE+5pSU+UAE1Hu0J6MmA3B2WnNDZ
 nunqQxTyhyucHlW0ax5ur1BUdgEC7n+6a1i94CXtaWlRYyo0g2OVSJr4dVlB4ZL2wouv
 vBAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=ffs69XwESOzXBxIqtmTJBzG8E5wzXjrjGu3Cpe3aCFg=;
 b=mBCrpTpldX30Vd0Wes0n0lP9Tb39gAmDmPKza7DqkhGiNt/ZdNdzXldWvRoxdbIoBn
 x3Bg1YMIx/yILlD7jQk/SqwXl7EiK4uMUPeVuRZUu0Wteu/cPp2BExZlYKnnFzzAZTYX
 r0rxnqd48whSW1aqLEuF2kFtYT42o0Lod3LD+fw7WiswanxEPeUYPYq2bhGT97yul/5y
 qH9XFf094/x2j85k5LvVjhVmSOSPXyWJcL7wLidIGJSqrlKD6b21olhOul/047vsRk7Z
 5sF+co6Qia4vzsRQUrdGm6lcFmPOTF1l503QyV9a9hWRIgKt1EOckdrsWmYTSADmSa/o
 06Gw==
X-Gm-Message-State: AOAM532OpWwHid9K59kZl20+nHh1S5RZy6t5++DgiPSNajKq1mgg4fxA
 eQJCbBmhSLln5ya+LlVr9G/Z99RYKqo=
X-Google-Smtp-Source: ABdhPJyPRuUo/GBscqMTff/MSHbewV0w8yy1WkzPAZaK8enkpIdqUlS1KhoY3ifIxV6dwqQ7AzwN9g==
X-Received: by 2002:a65:4488:: with SMTP id l8mr135437pgq.327.1592419085582;
 Wed, 17 Jun 2020 11:38:05 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id s30sm495055pgn.34.2020.06.17.11.38.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 11:38:04 -0700 (PDT)
Message-ID: <5eea630c.1c69fb81.6acae.21cf@mx.google.com>
Date: Wed, 17 Jun 2020 11:38:04 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: build
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.8-rc1-8-gb9249cba25a5
Subject: arm64/for-kernelci build: 2 builds: 1 failed, 1 passed, 1 error,
 8 warnings (v5.8-rc1-8-gb9249cba25a5)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org,
 kernelci-results@groups.io
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_113810_120498_73288B7D 
X-CRM114-Status: UNSURE (   4.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YXJtNjQvZm9yLWtlcm5lbGNpIGJ1aWxkOiAyIGJ1aWxkczogMSBmYWlsZWQsIDEgcGFzc2VkLCAx
IGVycm9yLCA4IHdhcm5pbmdzICh2NS44LXJjMS04LWdiOTI0OWNiYTI1YTUpCgpGdWxsIEJ1aWxk
IFN1bW1hcnk6IGh0dHBzOi8va2VybmVsY2kub3JnL2J1aWxkL2FybTY0L2JyYW5jaC9mb3Ita2Vy
bmVsY2kva2VybmVsL3Y1LjgtcmMxLTgtZ2I5MjQ5Y2JhMjVhNS8KClRyZWU6IGFybTY0CkJyYW5j
aDogZm9yLWtlcm5lbGNpCkdpdCBEZXNjcmliZTogdjUuOC1yYzEtOC1nYjkyNDljYmEyNWE1Ckdp
dCBDb21taXQ6IGI5MjQ5Y2JhMjVhNWRjZTVkZTg3ZTU0MDQ1MDNhNWUxMTgzMmMyZGQKR2l0IFVS
TDogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQv
bGludXguZ2l0CkJ1aWx0OiAxIHVuaXF1ZSBhcmNoaXRlY3R1cmUKCkJ1aWxkIEZhaWx1cmUgRGV0
ZWN0ZWQ6Cgphcm02NDoKICAgIGFsbG1vZGNvbmZpZzogKGdjYy04KSBGQUlMCgpFcnJvcnMgYW5k
IFdhcm5pbmdzIERldGVjdGVkOgoKYXJtNjQ6CiAgICBhbGxtb2Rjb25maWcgKGdjYy04KTogMSBl
cnJvcgogICAgZGVmY29uZmlnIChnY2MtOCk6IDggd2FybmluZ3MKCkVycm9ycyBzdW1tYXJ5OgoK
ICAgIDEgICAgaW5jbHVkZS9saW51eC9jb21waWxlci5oOjM5MjozODogZXJyb3I6IGNhbGwgdG8g
4oCYX19jb21waWxldGltZV9hc3NlcnRfMjI34oCZIGRlY2xhcmVkIHdpdGggYXR0cmlidXRlIGVy
cm9yOiBCVUlMRF9CVUdfT04gZmFpbGVkOiBvZmZzZXRvZihzdHJ1Y3QgdGFza19zdHJ1Y3QsIHdh
a2VfZW50cnlfdHlwZSkgLSBvZmZzZXRvZihzdHJ1Y3QgdGFza19zdHJ1Y3QsIHdha2VfZW50cnkp
ICE9IG9mZnNldG9mKHN0cnVjdCBfX2NhbGxfc2luZ2xlX2RhdGEsIGZsYWdzKSAtIG9mZnNldG9m
KHN0cnVjdCBfX2NhbGxfc2luZ2xlX2RhdGEsIGxsaXN0KQoKV2FybmluZ3Mgc3VtbWFyeToKCiAg
ICAzICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvYnJvYWRjb20vc3RpbmdyYXkvc3RpbmdyYXktdXNi
LmR0c2k6Ny4zLTE0OiBXYXJuaW5nIChkbWFfcmFuZ2VzX2Zvcm1hdCk6IC91c2I6ZG1hLXJhbmdl
czogZW1wdHkgImRtYS1yYW5nZXMiIHByb3BlcnR5IGJ1dCBpdHMgI3NpemUtY2VsbHMgKDEpIGRp
ZmZlcnMgZnJvbSAvICgyKQogICAgMyAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL2Jyb2FkY29tL3N0
aW5ncmF5L3N0aW5ncmF5LXVzYi5kdHNpOjcuMy0xNDogV2FybmluZyAoZG1hX3Jhbmdlc19mb3Jt
YXQpOiAvdXNiOmRtYS1yYW5nZXM6IGVtcHR5ICJkbWEtcmFuZ2VzIiBwcm9wZXJ0eSBidXQgaXRz
ICNhZGRyZXNzLWNlbGxzICgxKSBkaWZmZXJzIGZyb20gLyAoMikKICAgIDEgICAgYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL2lwcTYwMTguZHRzaToxMjcuMy0xNDogV2FybmluZyAoZG1hX3Jhbmdl
c19mb3JtYXQpOiAvc29jOmRtYS1yYW5nZXM6IGVtcHR5ICJkbWEtcmFuZ2VzIiBwcm9wZXJ0eSBi
dXQgaXRzICNzaXplLWNlbGxzICgxKSBkaWZmZXJzIGZyb20gLyAoMikKICAgIDEgICAgYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL2lwcTYwMTguZHRzaToxMjcuMy0xNDogV2FybmluZyAoZG1hX3Jh
bmdlc19mb3JtYXQpOiAvc29jOmRtYS1yYW5nZXM6IGVtcHR5ICJkbWEtcmFuZ2VzIiBwcm9wZXJ0
eSBidXQgaXRzICNhZGRyZXNzLWNlbGxzICgxKSBkaWZmZXJzIGZyb20gLyAoMikKCj09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09CgpEZXRhaWxlZCBwZXItZGVmY29uZmlnIGJ1aWxkIHJlcG9ydHM6Cgot
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQphbGxtb2Rjb25maWcgKGFybTY0LCBnY2MtOCkg4oCUIEZB
SUwsIDEgZXJyb3IsIDAgd2FybmluZ3MsIDAgc2VjdGlvbiBtaXNtYXRjaGVzCgpFcnJvcnM6CiAg
ICBpbmNsdWRlL2xpbnV4L2NvbXBpbGVyLmg6MzkyOjM4OiBlcnJvcjogY2FsbCB0byDigJhfX2Nv
bXBpbGV0aW1lX2Fzc2VydF8yMjfigJkgZGVjbGFyZWQgd2l0aCBhdHRyaWJ1dGUgZXJyb3I6IEJV
SUxEX0JVR19PTiBmYWlsZWQ6IG9mZnNldG9mKHN0cnVjdCB0YXNrX3N0cnVjdCwgd2FrZV9lbnRy
eV90eXBlKSAtIG9mZnNldG9mKHN0cnVjdCB0YXNrX3N0cnVjdCwgd2FrZV9lbnRyeSkgIT0gb2Zm
c2V0b2Yoc3RydWN0IF9fY2FsbF9zaW5nbGVfZGF0YSwgZmxhZ3MpIC0gb2Zmc2V0b2Yoc3RydWN0
IF9fY2FsbF9zaW5nbGVfZGF0YSwgbGxpc3QpCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpkZWZj
b25maWcgKGFybTY0LCBnY2MtOCkg4oCUIFBBU1MsIDAgZXJyb3JzLCA4IHdhcm5pbmdzLCAwIHNl
Y3Rpb24gbWlzbWF0Y2hlcwoKV2FybmluZ3M6CiAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL2Jyb2Fk
Y29tL3N0aW5ncmF5L3N0aW5ncmF5LXVzYi5kdHNpOjcuMy0xNDogV2FybmluZyAoZG1hX3Jhbmdl
c19mb3JtYXQpOiAvdXNiOmRtYS1yYW5nZXM6IGVtcHR5ICJkbWEtcmFuZ2VzIiBwcm9wZXJ0eSBi
dXQgaXRzICNhZGRyZXNzLWNlbGxzICgxKSBkaWZmZXJzIGZyb20gLyAoMikKICAgIGFyY2gvYXJt
NjQvYm9vdC9kdHMvYnJvYWRjb20vc3RpbmdyYXkvc3RpbmdyYXktdXNiLmR0c2k6Ny4zLTE0OiBX
YXJuaW5nIChkbWFfcmFuZ2VzX2Zvcm1hdCk6IC91c2I6ZG1hLXJhbmdlczogZW1wdHkgImRtYS1y
YW5nZXMiIHByb3BlcnR5IGJ1dCBpdHMgI3NpemUtY2VsbHMgKDEpIGRpZmZlcnMgZnJvbSAvICgy
KQogICAgYXJjaC9hcm02NC9ib290L2R0cy9icm9hZGNvbS9zdGluZ3JheS9zdGluZ3JheS11c2Iu
ZHRzaTo3LjMtMTQ6IFdhcm5pbmcgKGRtYV9yYW5nZXNfZm9ybWF0KTogL3VzYjpkbWEtcmFuZ2Vz
OiBlbXB0eSAiZG1hLXJhbmdlcyIgcHJvcGVydHkgYnV0IGl0cyAjYWRkcmVzcy1jZWxscyAoMSkg
ZGlmZmVycyBmcm9tIC8gKDIpCiAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL2Jyb2FkY29tL3N0aW5n
cmF5L3N0aW5ncmF5LXVzYi5kdHNpOjcuMy0xNDogV2FybmluZyAoZG1hX3Jhbmdlc19mb3JtYXQp
OiAvdXNiOmRtYS1yYW5nZXM6IGVtcHR5ICJkbWEtcmFuZ2VzIiBwcm9wZXJ0eSBidXQgaXRzICNz
aXplLWNlbGxzICgxKSBkaWZmZXJzIGZyb20gLyAoMikKICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMv
YnJvYWRjb20vc3RpbmdyYXkvc3RpbmdyYXktdXNiLmR0c2k6Ny4zLTE0OiBXYXJuaW5nIChkbWFf
cmFuZ2VzX2Zvcm1hdCk6IC91c2I6ZG1hLXJhbmdlczogZW1wdHkgImRtYS1yYW5nZXMiIHByb3Bl
cnR5IGJ1dCBpdHMgI2FkZHJlc3MtY2VsbHMgKDEpIGRpZmZlcnMgZnJvbSAvICgyKQogICAgYXJj
aC9hcm02NC9ib290L2R0cy9icm9hZGNvbS9zdGluZ3JheS9zdGluZ3JheS11c2IuZHRzaTo3LjMt
MTQ6IFdhcm5pbmcgKGRtYV9yYW5nZXNfZm9ybWF0KTogL3VzYjpkbWEtcmFuZ2VzOiBlbXB0eSAi
ZG1hLXJhbmdlcyIgcHJvcGVydHkgYnV0IGl0cyAjc2l6ZS1jZWxscyAoMSkgZGlmZmVycyBmcm9t
IC8gKDIpCiAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNjAxOC5kdHNpOjEyNy4zLTE0
OiBXYXJuaW5nIChkbWFfcmFuZ2VzX2Zvcm1hdCk6IC9zb2M6ZG1hLXJhbmdlczogZW1wdHkgImRt
YS1yYW5nZXMiIHByb3BlcnR5IGJ1dCBpdHMgI2FkZHJlc3MtY2VsbHMgKDEpIGRpZmZlcnMgZnJv
bSAvICgyKQogICAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTYwMTguZHRzaToxMjcuMy0x
NDogV2FybmluZyAoZG1hX3Jhbmdlc19mb3JtYXQpOiAvc29jOmRtYS1yYW5nZXM6IGVtcHR5ICJk
bWEtcmFuZ2VzIiBwcm9wZXJ0eSBidXQgaXRzICNzaXplLWNlbGxzICgxKSBkaWZmZXJzIGZyb20g
LyAoMikKCi0tLQpGb3IgbW9yZSBpbmZvIHdyaXRlIHRvIDxpbmZvQGtlcm5lbGNpLm9yZz4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
