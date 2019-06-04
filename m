Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F7C3416F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IS3fRH6Dqg6JN9VwScprhoFo/vhTSvm0ylaWRtP9IVQ=; b=DnBgUHKnnUxjqYljd0SitfGwqN
	hOTPzuUzkPLxUKBmy8rEsRf+h0YFMO5eKDZKNagMOYCwTm0/TpiS+4oEmiZ1v7vHRM3g/Z2h/yN50
	ShKmaL+NBw/rh/SZmQCu/x9qIPCVAQ/dzjqJMJ2AYcmJ3FNleit9m0M9xXFeIC2MvFjkNk7EvGEfc
	9kdZ6fOgxXYFkf1vn72GqVSTJORyvOhdem3uxV3q66/gw9xWrnelrpftLgOcW5QBAATVFSEjt+WJ/
	TzdnlPel9payQXTkqxvOhZv1ljo0veYhCWE84JanXjoS0ETDDc46l7wrdB3ky7Y67+aQe/OchTZ/2
	K94qd6tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4bL-0001Zc-2b; Tue, 04 Jun 2019 08:15:23 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4aw-0000Oh-Hv
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:15:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id u22so12218543pfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=e4QisK5dlRTGLzT7/Rg8a2odjBOSln7PHE3O27n2JN8=;
 b=trbg0frb5Fm6WDCdwfgr0zwTekzKj6RqswMPjQMJ99rO6iHuS2rMNYCBGuDZBGGJSL
 VXvzRWgev366dHO4Ju+XgTk8mr53kJtOrWff7OR0VQAnJN/emszpnUFXpteaSuwy+3RD
 6Qwkhht7EOwDAPmNItBNdWldGbu7b/081rTHGBXxhn6QNbTtdri4hBkShVXhnufArVvu
 iSA9g2TY1ReSSUCGk0krgRSecKARonkhd1Vixw60KDRizzeRGhnvZdMNjC2Kzv9Jwicj
 ujsONmhW4MXoIptsfzomXNoWz5qdGXjZlDUflQJBSlx/unwniaY+PBYp8Xh3aBF1cjOg
 0YAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=e4QisK5dlRTGLzT7/Rg8a2odjBOSln7PHE3O27n2JN8=;
 b=FlNdCuwYKG1DDJv0+WDzfHIXt5rqfR2xpl1GkNG2UtRp5KId1G0Sbi/KfHRgj2hfFl
 WVBUU6SpLSuCuiB2pDj5vr+HNuIqYJoNQkp8mRXLueb0sYnGa8resiP7iWLQzV9+7LlM
 0rTwILSG+RY6nv3/uR9NtxfTQSzDFphLngAtdaTL0goTifidtE+qAOw3sL8PpVHW9Ps2
 Vu5Xl7qfAUhsYMhkOTGRdM9Ob4XvHFjXjF8UxJ7TKscDTr+lohx7+Av1Z3OvB7p4+AL8
 U6jGUftiRt6HHh226S74wLlCCLYzDlNw9bFmP1jbk+H4uZ5cqwNZVB8Yy7pgt7+xcfpi
 rmPA==
X-Gm-Message-State: APjAAAU2Qn5XWljrjR8ey8lnBwJAkEAH3KIERReDWg6/0MVIHe8VLvFj
 QjDwJV/9dUn6Dc1KlcI0dpj4Ow==
X-Google-Smtp-Source: APXvYqw4qpyu9spV1elQpgXWUR1JDezR8zWgDrSzwYuh+hIyg/hAg3LaU9yU/tm5hbVZNcFXJ+fT0g==
X-Received: by 2002:a62:d149:: with SMTP id t9mr14481108pfl.173.1559636097966; 
 Tue, 04 Jun 2019 01:14:57 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id j4sm14818804pgc.56.2019.06.04.01.14.53
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 04 Jun 2019 01:14:57 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH v2 2/9] dt-bindings: mmc: sprd: Add another optional clock
 documentation
Date: Tue,  4 Jun 2019 16:14:22 +0800
Message-Id: <84abb6b282b1fbce0c39ebd2b42ca4c18118f863.1559635435.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_011458_593906_42930BE4 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, baolin.wang@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For some Spreadtrum platforms like SC9860 platform, we should enable another
gate clock '2x_enable' to make the SD host controller work well. Thus add
documentation for this optional clock.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 .../devicetree/bindings/mmc/sdhci-sprd.txt         |    1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
index 45c9978..a285c77 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
+++ b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
@@ -14,6 +14,7 @@ Required properties:
 - clock-names: Should contain the following:
 	"sdio" - SDIO source clock (required)
 	"enable" - gate clock which used for enabling/disabling the device (required)
+	"2x_enable" - gate clock controlling the device for some special platforms (optional)
 
 Optional properties:
 - assigned-clocks: the same with "sdio" clock
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
