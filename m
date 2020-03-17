Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFB61891DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 00:16:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LyzfUDPe+lostfbyEudXLqPrrs0Xll0jBrXRVrNmcA8=; b=LnEgfZplACQcik
	IK+dUGN2SCNS2kZ39DIHXZZVuYhwKu/BC5rjtEuDLOa/LmuoL1h7DqTQA+gACZxk27vxCjYjeUfgN
	A2SLrXQhotoBXsZNWUiAVlwZ+d7WLGtFb9Gs82YIsSVEBq3qpn/0RfdWVkm/kEZfJQBy4JkmoU0MU
	xPz2yCZpo11MoyLNWJybZe+K8jfGM0FGrbi/3+ftVkwwM2XbUtGQ7QfrNO6d1nAsYzMkjHOvAb5ez
	uYHD92Ua1030dh0T3coaGsoWnqPUPAggZ9g3Mr30C3Th5hZmN68/2ZaQvRuc0kbl4TorjvXfojjJh
	oB4sLEm8Nhf/xfqDPzkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jELRD-0007dE-P5; Tue, 17 Mar 2020 23:15:55 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jELR4-0007cs-D7
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 23:15:47 +0000
Received: by mail-pf1-x42e.google.com with SMTP id c19so12786772pfo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 16:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=9T5u9miOvDkvvPoEL1cCEIyHN1YoAuIlpv4XXstovOU=;
 b=Amf7QRfIkxGJwGKDa1oE8hM9nkaB2k6BGI2Jsrgp5QNGwHmxWz55jEl69kqj7LP7E8
 G/rs0hFBreW3AAscyWUht3ZIbrxBwGTgm5bvRqr/iVs+IHYB8ysjanEEMcDmvfpe5IJ9
 pFd+4jfO2JrW0cldCdVVBTbHhO9qxCxk01/40A0sQllFddqZ72oh6RZKC41hhpJyxMlG
 OQPEKdm3oRtpPdVX8+TwDyGDqXdNq0tT0ua2oPVtpclJWwYrmiKuA5sLcoO46OmcQX1L
 y+vhJAba5dSNwa9ONH0QwajgGsUVCPSLqRQ23mWHnrWBZkgoOWssBJ8/MonCEpJOovZE
 CyGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=9T5u9miOvDkvvPoEL1cCEIyHN1YoAuIlpv4XXstovOU=;
 b=WK5LHAb1E0+3TPaMtJunVC7jI/q0RKEFQXmAdOMcnOtaTfCP+WZU9OK/Lnsyht/9Tq
 HriU/I1pUxsFF77hj0CN6/f+971VRtLGJcfsJSKyHbnV+TYCU0smuo+nN+AYkpDaSXn2
 K3y2w9qL85hG+zxPtMCRVAl6dXzGAp4bTM8hzuGrXX0N8hIgLEezfSj4pSw0ygQtAxJV
 RHu4rsUo+vLheOCj78YV/BYNKvUIN9oqXs3I6nZ8W8lUbT5EvEqRFRQhHg5nCEiUyyrr
 8E4eXFCTv+x6TSZbzcMJ5d/ZtcuQaIe8ixdUqxcffpOLkWzKPacnRMFbllHqFkNlgHdZ
 s+aw==
X-Gm-Message-State: ANhLgQ3dyF2gzRPOUhKK+N5g0qn8KtXI6pUn7PRKAPxPVwPoVtWZgZWQ
 CooOgbizfh77cJu69tWbBmU2og==
X-Google-Smtp-Source: ADFU+vttDi+2zEZhm5wgdAxWfkXKaJzEc2fSkgxroibMqFZloVf6h1U00JSeHyCaQlzpzoZ4sty8Ag==
X-Received: by 2002:a62:1c48:: with SMTP id c69mr1150032pfc.283.1584486945159; 
 Tue, 17 Mar 2020 16:15:45 -0700 (PDT)
Received: from [10.0.9.4] ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id v59sm381602pjb.26.2020.03.17.16.15.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 16:15:44 -0700 (PDT)
Message-ID: <5e715a20.1c69fb81.d52f4.2251@mx.google.com>
Date: Tue, 17 Mar 2020 16:15:44 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.6-rc6-67-gcf89e8c383a6
X-Kernelci-Report-Type: build
Subject: arm64/for-kernelci build: 3 builds: 1 failed, 2 passed,
 1 error (v5.6-rc6-67-gcf89e8c383a6)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_161546_447419_E5433A78 
X-CRM114-Status: UNSURE (   3.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42e listed in]
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

YXJtNjQvZm9yLWtlcm5lbGNpIGJ1aWxkOiAzIGJ1aWxkczogMSBmYWlsZWQsIDIgcGFzc2VkLCAx
IGVycm9yICh2NS42LXJjNi02Ny1nY2Y4OWU4YzM4M2E2KQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBo
dHRwczovL2tlcm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5l
bC92NS42LXJjNi02Ny1nY2Y4OWU4YzM4M2E2LwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2Vy
bmVsY2kKR2l0IERlc2NyaWJlOiB2NS42LXJjNi02Ny1nY2Y4OWU4YzM4M2E2CkdpdCBDb21taXQ6
IGNmODllOGMzODNhNjQ0N2E2MzU0MDBmNjY5ZDBjZDk3ZTg5NzcwZDkKR2l0IFVSTDogaHR0cHM6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXguZ2l0
CkJ1aWx0OiAxIHVuaXF1ZSBhcmNoaXRlY3R1cmUKCkJ1aWxkIEZhaWx1cmUgRGV0ZWN0ZWQ6Cgph
cm02NDoKICAgIGFsbG5vY29uZmlnOiAoZ2NjLTgpIEZBSUwKCkVycm9ycyBEZXRlY3RlZDoKCmFy
bTY0OgogICAgYWxsbm9jb25maWcgKGdjYy04KTogMSBlcnJvcgoKRXJyb3JzIHN1bW1hcnk6Cgog
ICAgMSAgICBpbmNsdWRlL2xpbnV4L2VsZi5oOjc5OjE5OiBlcnJvcjogcmVkZWZpbml0aW9uIG9m
IOKAmGFyY2hfcGFyc2VfZWxmX3Byb3BlcnR54oCZCgoKPT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0K
CkRldGFpbGVkIHBlci1kZWZjb25maWcgYnVpbGQgcmVwb3J0czoKCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCmFsbG1vZGNvbmZpZyAoYXJtNjQsIGdjYy04KSDigJQgUEFTUywgMCBlcnJvcnMsIDAg
d2FybmluZ3MsIDAgc2VjdGlvbiBtaXNtYXRjaGVzCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQph
bGxub2NvbmZpZyAoYXJtNjQsIGdjYy04KSDigJQgRkFJTCwgMSBlcnJvciwgMCB3YXJuaW5ncywg
MCBzZWN0aW9uIG1pc21hdGNoZXMKCkVycm9yczoKICAgIGluY2x1ZGUvbGludXgvZWxmLmg6Nzk6
MTk6IGVycm9yOiByZWRlZmluaXRpb24gb2Yg4oCYYXJjaF9wYXJzZV9lbGZfcHJvcGVydHnigJkK
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmRlZmNvbmZpZyAoYXJtNjQsIGdjYy04KSDigJQgUEFT
UywgMCBlcnJvcnMsIDAgd2FybmluZ3MsIDAgc2VjdGlvbiBtaXNtYXRjaGVzCgotLS0KRm9yIG1v
cmUgaW5mbyB3cml0ZSB0byA8aW5mb0BrZXJuZWxjaS5vcmc+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
