Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C521F17A7BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:37:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6S0Ky4BTsmR+njg+bEdznM2jpoW/gGyCth9kyj3Nb3Y=; b=LaYY3EhaksrS6ZowIJgA/s2sUl
	z1MY3kQO8xzQJf7+YKlkt101neenKxtiZBvlhd0ZpeoWCyMzjUtFsPgrA9V0mAjZ08jATL+gLsxwY
	5YtRDzz2CDjrr4DpfXrMgM34bdeQnT7jsGt3OQrL4uNYCQv683fAc0ijTwCsQ59k4mkrpVad9t4vi
	E7yyW/icEbCQYuDcHe1p9ITXoCV6s2lJwvLysijZiZTIVwQ9I6xMqRFEWFgkINKMygvZyu3jhaqrj
	WtXfeFEq+CckESYYpfSBfO24PTWnKyKOntVl5gBKpa25sFbVyVpMFCfhSY32NrjFx0JwSp0RguMFc
	/DpTmFgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9rcv-0002RY-62; Thu, 05 Mar 2020 14:37:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9rbt-0001bn-5H; Thu, 05 Mar 2020 14:36:26 +0000
Received: by mail-wm1-x342.google.com with SMTP id 6so6596081wmi.5;
 Thu, 05 Mar 2020 06:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mCH9YHInPZQLUJIgoZ+Jrv9Nn/fRbaxSS8/HO6x7hpw=;
 b=GyZZk7OM0/i1zI5EJ7c+Jhk8G0o7+uPmKPSFGtBj3Bht2so53Qcl86r2AQyqVfbE+1
 0piRPnamkrxeS75tAvY2JEsK9NllAQk9Q9GCwEP8L8/SJotWKXyCWUCadJUeeEqbtR/r
 5aowbLfbI0/Ugvnv84/t+Kp3uUAn1VdQqOjd/uWQ+4tF07vieos/zBjEYjE5hTT26hMt
 GhvZjzB4vyGDnXFJgdxNc/6d6Na9+j2iyr0iWT4Hc4zK+xhZMNVfJEnUxa95E6BUpkRe
 6K98RYFD5dhf0JWNbdP+dF4HfiuZ98zCXh1MMJ1JEAm9fBIrnknCs7MofNyIG/KHN+2q
 9ApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mCH9YHInPZQLUJIgoZ+Jrv9Nn/fRbaxSS8/HO6x7hpw=;
 b=uMZ3tIKcekhKKpKjD8z7PxJ6E7jzc75r62hKA6HllPxzmIn+bj+dJvtAeWtYnKsCww
 fjjLjzUrQuDtZ0fG4j44PNsoYW7CCuOweZW7UIrizAfYaI37R7vdVWzp8XYIiKnXIiOj
 GAoVWeaNt65IF+2icFEZeAKXIiCOrlXShKEtrgzQxeaq+qSw+7gtcPbfGLnn3zYWJYm6
 +Q6UEku+cJnYL9hWOiWAD4eCX2fQ8NiBWbGMYoTrasIpR8V9FeAOiRwOJqw6YZ5Q4eCU
 YpN6eDtEv5EhmvrJQzatuurK8UVYDmUbDDef8JAmjB5YxUqcIGwh0I48h/I+hVRPI1/H
 uJiA==
X-Gm-Message-State: ANhLgQ07uMcbKI2xnI+E5egFT1xIqWyVSv5bv5d3E6zlcPzbbuy75uSC
 QE5yNCH1ACqAMKPnHrWImRs=
X-Google-Smtp-Source: ADFU+vuknS7SONcB9xzTRRWjWLA1MdvgPbwXlAe5hfTyTdIIx7WB7/x+ArwiI/4tRTwd9a1fgqWEOg==
X-Received: by 2002:a1c:5f43:: with SMTP id t64mr9767121wmb.2.1583418984037;
 Thu, 05 Mar 2020 06:36:24 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g201sm9365124wme.23.2020.03.05.06.36.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Mar 2020 06:36:23 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 4/5] dt-bindings: i2c: i2c-rk3x: add description for rk3308
Date: Thu,  5 Mar 2020 15:36:10 +0100
Message-Id: <20200305143611.10733-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200305143611.10733-1-jbx6244@gmail.com>
References: <20200305143611.10733-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_063625_195747_9650D0B1 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description below is already in use for rk3308.dtsi,
but was somehow never added to a document, so add
"rockchip,rk3308-i2c", "rockchip,rk3399-i2c"
for i2c nodes on a rk3308 platform to i2c-rk3x.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
index 67cdce8fb..edee8f699 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
@@ -33,6 +33,7 @@ properties:
           - const: rockchip,rk3288-i2c
       - items:
           - enum:
+            - rockchip,rk3308-i2c
             - rockchip,rk3328-i2c
           - const: rockchip,rk3399-i2c
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
