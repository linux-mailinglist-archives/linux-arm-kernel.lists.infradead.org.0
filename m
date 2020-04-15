Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA8D1AB23B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 22:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=m86C0RGZJmSjLfyT4/Pvonhwwcy9TySSKz1BfjU0mZE=; b=Ilp
	pPaxqHtoybtOE3mTfxhKEqOSNmQ+Jt3YQTIBrWM64iiwtiN6gCffbLTnaDqzPVr85kNa4qnmf1aDE
	hDsHmEd/gGh10q93bBqc92kmM1fKTeyxlcchw7NtTH8wVY0Lk/tBVVzmGyBb1kyv+S9Vc/fPTez3N
	CoIO9RZYJsCODtYaUmsPrgbsmzlNlBH7yvu0LT4Vu28kcY/9XoNWWLi/jzRZz1BhGiunUDKewWwEX
	RYQSvqOjsapfw9V2qM5I5cPYYQ1iid7IChvTHuA7y0d85ylq0fAWIWsxi2YInLrEpVVzabPQRteVl
	4P+9RSnJUnFJIGE1j2MZEPujuU0Z+YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOoEZ-0007GY-8A; Wed, 15 Apr 2020 20:02:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOoES-0007Fu-Q4; Wed, 15 Apr 2020 20:02:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id d77so1186996wmd.3;
 Wed, 15 Apr 2020 13:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=iCP6LoyFxExRJqxqIqO0ZCtpb3X9pIKnl0AtHQmrXjs=;
 b=d7QuDTSV3oT/GjNp4OI65qjAjBfFkEo24nuK8zFcOZnpgc4WHnAIJ8SmZNfPyM+nEw
 f1TGgcn+brikUxKXefZQn5XLEFe0rK7FFcAVWUjox8ZkUarOdcilxFfrVUWuE9dEyMvJ
 Mm/TnZZnifu8z6mOSWxAgjq2gtcWOhmZkGm1szp7nXtwAvD9T4f8gHAEv0QSxAVp9rx3
 HlJMAxZCU4uBPzH5GfScEBZNvTjWjkqjcK+DmgRK19x5a6P7AeVaSjRwcQezDFj+rSci
 xgxzBLKCXrHAGxCEebROVLDuC/030ioyihdjtlwmIY+/HRsocdtcI6JET7qhdqXOynsk
 oKcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iCP6LoyFxExRJqxqIqO0ZCtpb3X9pIKnl0AtHQmrXjs=;
 b=JUT7gzn58+3ue914g51GuejXUYvnO7xIn8k/EE6M4ShUbCNgPCtgdZy+Pg6JEhtkuV
 PqZX3LrMoveTYO3/N0jXHIP7ql/WZ9qpkbyoBAVAArzu2M/vDsvOdICqLNmUFsFdprBu
 EWpsqnohWxkShUUXGX0/2hKmw26suKjqauIf6Jw7WHWaKT3k5iF42VpRPXZJ1Euro77W
 I/XAmMyhTf/GLx4yW1EHPkHguKpqLccWPD/VfvPG/UN9zR0RmVQyfH8zZOq0xw5JpARt
 XlgmyL3rtTGsVCTkXi+Hf1549s0qw9JpEXp730n1GyAjGzJ7dz/8WosK1Fgfc84y9GQZ
 zPJQ==
X-Gm-Message-State: AGi0PuYkQC23OGjBltDDq3cBh7qIojQ4VAuG1751iKWBWcwuXPhRKiCL
 zYyHE4yqyRETSs7mMSUIaWM=
X-Google-Smtp-Source: APiQypIZiSysEEnEGOfY5fZpJcuccPWd4eDhfIDnRcThA/tstm0tS7BGJk0WDy4K33IfCgeGWrNurQ==
X-Received: by 2002:a1c:1b58:: with SMTP id b85mr896338wmb.112.1586980916609; 
 Wed, 15 Apr 2020 13:01:56 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id s6sm736184wmh.17.2020.04.15.13.01.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Apr 2020 13:01:56 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] dt-bindings: net: ethernet-phy: add desciption for
 ethernet-phy-id1234.d400
Date: Wed, 15 Apr 2020 22:01:49 +0200
Message-Id: <20200415200149.16986-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_130200_866667_6F06B933 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description below is already in use in
'rk3228-evb.dts', 'rk3229-xms6.dts' and 'rk3328.dtsi'
but somehow never added to a document, so add
"ethernet-phy-id1234.d400", "ethernet-phy-ieee802.3-c22"
for ethernet-phy nodes on Rockchip platforms to
'ethernet-phy.yaml'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/net/ethernet-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index 8927941c7..5aa141ccc 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -45,6 +45,9 @@ properties:
           bits of a vendor specific ID.
       - items:
           - pattern: "^ethernet-phy-id[a-f0-9]{4}\\.[a-f0-9]{4}$"
+          - const: ethernet-phy-ieee802.3-c22
+      - items:
+          - pattern: "^ethernet-phy-id[a-f0-9]{4}\\.[a-f0-9]{4}$"
           - const: ethernet-phy-ieee802.3-c45
 
   reg:
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
