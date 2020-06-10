Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CC41F5920
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 18:33:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpBmE0dHpdCNxZKfmFZJiydFSbdJX4F2x5Ajq7YN2J0=; b=nUtOY6YQepZ2xQ
	2a+8/zQpJXmM5hgsWz//UWUdnqavD1QxrQcxybGJvF8Z2ySjWSovlRY4NbYI9UwSLDoN55RClu5p5
	Q4iL0EZfcOL4oMrukHxcVuXLa8YSRqexj57EPaDsfDNEOuLfE4lJ+ZpTH3hFIKSJvdEEQ/aiLTjZP
	f4ixDglLe/7b9l2+z2+J986N14Zu0EHTii6h6sNhwwmchD+Muspx01HXQHlU5DKnvR1P4/dPHxIj4
	DAdbatUFObkwPXvY7QL9o7b+amBjaYPwGcTTmg9ZvOELNec0QnkZrFykalB0mvM1Jc4kB158/iQXr
	aY1QW5/yMhZwupQWR+vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3fW-0000Pa-Vr; Wed, 10 Jun 2020 16:33:38 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3ez-0000Fp-Sw
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 16:33:07 +0000
Received: by mail-wr1-x432.google.com with SMTP id y17so2984091wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 09:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nuTrMyPkP8MX6Ctw/wkm1vrkYcKiiG7dPPujumR0X/U=;
 b=mU/hjbecbmsx+TmGH/jpg89IQXVoFggdbi7MB1DbtKv3rXmOMSi+0mRs6ISX9LAxby
 zEhc3wG4392ERUyjTlV+hqk/v+scR7Usc3i1x4BuVrMX/fs99Ten8MeOWoqe+NENf61B
 u7BiCBjgoNYSaM/cnJvhe5HssaYn/7kNEk0sfrqbhYzB62DKLoqdfK9PSl5fw7imbtVP
 9YpgANzvLUh2sT/lrBJn0K9QSstXqSpcCOqW/gXqjMDKh1qXoX4ym707+xGhKf3hkZxS
 +aCIWiazh/8fABSt8hBsF+zgzSJz/CwVn6ky9ukWq3nuKhTwyLKA0l8KitiEFnSFRNrN
 Ni4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nuTrMyPkP8MX6Ctw/wkm1vrkYcKiiG7dPPujumR0X/U=;
 b=GUIYb9VzUCFVaVlPTCOHsPVJHdufb1UU0T4KD5nZm2HW5ZkpPdU8swnHq0ehLsqrH0
 gwq1mvrMVrunvTD1XnjS/1/oUROD9dtRCaV9fa7H4OFGPNAbYlhpn4nD8ZxpcqpXDMgi
 4b2c7Lh8ieIG6gIdfpjBwx+cEatXPCITNl5EtkcrRcYlfPQ804YmZ6+eKFkEoGyPE2Ec
 cdHtZblCmgFCAbwjYL6wDlPU23lyDx9h0MBGPkSm1/SNnAw5/+Pkik+A2ljJBSgvX/4I
 gCOAFqdc5XT+PlEgNWjWn047QIGhDXs/5mlpw8fGjC8fY3wmf6vRZRTaGsf6gSJsM8i2
 1x8w==
X-Gm-Message-State: AOAM532/+6r/XOxm0Ealmo3rT8hU2oW2znzBIg/aIyxmNS12QlU2DkOu
 tCn2aJbNctKLaPIjdf/rs9w=
X-Google-Smtp-Source: ABdhPJy6FeF0fIzTTPvA7eNZR972kcMsDLstcxKXuRRBGYYZhynPqZ29GEHX9kxA1ZspIZQi8jgSZQ==
X-Received: by 2002:adf:a1d3:: with SMTP id v19mr4609426wrv.245.1591806784588; 
 Wed, 10 Jun 2020 09:33:04 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id t7sm414430wrq.41.2020.06.10.09.33.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 09:33:04 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/6] dt-bindings: soc: brcm: add BCM63xx power domain
 binding
Date: Wed, 10 Jun 2020 18:32:56 +0200
Message-Id: <20200610163301.461160-2-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610163301.461160-1-noltari@gmail.com>
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200610163301.461160-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_093305_931473_E3523BB9 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QkNNNjMxOCwgQkNNNjMyOCwgQkNNNjM2MiBhbmQgQkNNNjMyNjggU29DcyBoYXZlIGEgcG93ZXIg
ZG9tYWluIGNvbnRyb2xsZXIKdG8gZW5hYmxlL2Rpc2FibGUgY2VydGFpbiBjb21wb25lbnRzIGlu
IG9yZGVyIHRvIHNhdmUgcG93ZXIuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXog
Um9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0KIHYyOiBBZGQgc2VwYXJhdGUgWUFNTCBmaWxl
LgoKIC4uLi9iaW5kaW5ncy9zb2MvYmNtL2JyY20sYmNtNjN4eC1wb3dlci55YW1sICB8IDQ0ICsr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspCiBjcmVh
dGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9iY20v
YnJjbSxiY202M3h4LXBvd2VyLnlhbWwKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3Mvc29jL2JjbS9icmNtLGJjbTYzeHgtcG93ZXIueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvYmNtL2JyY20sYmNtNjN4eC1wb3dlci55YW1s
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uODA0ZDhiMzE2NzllCi0t
LSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9i
Y20vYnJjbSxiY202M3h4LXBvd2VyLnlhbWwKQEAgLTAsMCArMSw0NCBAQAorIyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlcgorJVlBTUwgMS4yCistLS0KKyRpZDogImh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3NvYy9icmNtL2JyY20sYmNtNjN4eC1wb3dlci55
YW1sIyIKKyRzY2hlbWE6ICJodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUu
eWFtbCMiCisKK3RpdGxlOiBCQ002M3h4IHBvd2VyIGRvbWFpbiBkcml2ZXIKKworbWFpbnRhaW5l
cnM6CisgIC0gw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KKwor
ZGVzY3JpcHRpb246IHwKKyAgQkNNNjMxOCwgQkNNNjMyOCwgQkNNNjM2MiBhbmQgQkNNNjMyNjgg
U29DcyBoYXZlIGEgcG93ZXIgZG9tYWluIGNvbnRyb2xsZXIKKyAgdG8gZW5hYmxlL2Rpc2FibGUg
Y2VydGFpbiBjb21wb25lbnRzIGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuCisKK3Byb3BlcnRpZXM6
CisgIGNvbXBhdGlibGU6CisgICAgaXRlbXM6CisgICAgICAtIGVudW06CisgICAgICAgICAgLSBi
cmNtLGJjbTYzMTgtcG93ZXItY29udHJvbGxlcgorICAgICAgICAgIC0gYnJjbSxiY202MzI4LXBv
d2VyLWNvbnRyb2xsZXIKKyAgICAgICAgICAtIGJyY20sYmNtNjM2Mi1wb3dlci1jb250cm9sbGVy
CisgICAgICAgICAgLSBicmNtLGJjbTYzMjY4LXBvd2VyLWNvbnRyb2xsZXIKKworICByZWc6Cisg
ICAgbWF4SXRlbXM6IDEKKworICAjcG93ZXItZG9tYWluLWNlbGxzOgorICAgIGNvbnN0OiAxCisK
K3JlcXVpcmVkOgorICAtIGNvbXBhdGlibGUKKyAgLSByZWcKKyAgLSAjcG93ZXItZG9tYWluLWNl
bGxzCisKK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQorCitleGFtcGxlczoKKyAgLSB8Cisg
ICAgcGVyaXBoX3B3cjogcG93ZXItY29udHJvbGxlckAxMDAwMTg0OCB7CisgICAgICAgIGNvbXBh
dGlibGUgPSAiYnJjbSxiY202MzI4LXBvd2VyLWNvbnRyb2xsZXIiOworICAgICAgICByZWcgPSA8
MHgxMDAwMTg0OCAweDQ+OworICAgICAgICAjcG93ZXItZG9tYWluLWNlbGxzID0gPDE+OworICAg
IH07Ci0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
