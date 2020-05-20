Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B15E21DA75D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 03:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6MHu+oVFIfx/GMPcKpE+aRKLfVAEMyNXvMqG0pfFlOk=; b=VJo5nb3SG2Xm8y1xcuXOszrn18
	WW/9INw1U9nIMmDmtmgxKx1/BX9dd2wYqNsxgESxeRmCO07zjPHHOnr9kAfVCHebKxHrm6WLBcx5f
	ty3DSPx9GmhxLEtEuyGpu4tXgXzFE8Xm/qzXxuiSWiUvPuyvD2OK91oFykGK5yW563hATNoaumTRC
	avEo7q+dYi+n7QtHPXHYDZ+O8prhkBxyRD7qeeMbzYof6gtxXBsCKHQIVyZOuJIt7VMU7sn3aRn9g
	IwzKxS/ihtwNwLU5OHth9lnioxU9IaOS41MoIOE9HP5IXZyAmBo+0kzOxWFLtoeoJLJzsNQcAPdMe
	bMtOHeHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbDmX-0005MR-RY; Wed, 20 May 2020 01:44:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbDlk-0004r7-20; Wed, 20 May 2020 01:43:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id 50so1411221wrc.11;
 Tue, 19 May 2020 18:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bjQbbX91rvnNhlDfTgwfaBNtgngEI5glR7O7U8xJEyo=;
 b=lugw2ssDYNL2LcmLnwPmMdsxe4DWxowyinpMaoTghscznQiRWqC0VIY5uDb9XK2DKh
 BH6F+3TqNj1xdWpMuLVXvNRqcrzU7NPn62eAi0FIICdZNwKliW833pKS55sXILBaippw
 7yq/rA7M5/8mi0AYFGSavd/ww4egz6bdQkgwDkoecin5FhmB+Z3U4OLNrGEWo1/uBzxl
 65ucGpTfmK878WEvbxcKFb4reQXNmy0bd+/K+PuWuETgTCyDsGVhOjSaTVpliLYP/OMP
 tRNwf4tF6UVq49dGbRKrUPat8F3rrph29QoZbuhnvmy9kk34I5aeaD3WHi1f9yQqsPWo
 vL6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bjQbbX91rvnNhlDfTgwfaBNtgngEI5glR7O7U8xJEyo=;
 b=mDZgF68QUeRcLXvDU4WJ13fX+i5B0TC6KJ5qrcZ4bx52b+B1EJmAkNMHcQWxZI1EYD
 dkuR3+OhxKUYbSiWTb2NBFLC+tf5HMQaQV1JMnyzuZ9fAE+QIJ7iFUa9fio1VeI+RtIH
 qj/v/2Fr3IpE0a/Zecs0UsvQs9Gq530hn95wsGo7ekmAD3KnDYooO4AQC275MrOgQex9
 Hz32U3FVJ6QaIPQKhMtDJEGbds2s2F8anhqNDjne9sR6RnEadK60vETo7X6S79B79pW+
 MvR02OONWKSNIdprO1qJ9ZZIf597zi4EcBNf6dr2gJt1lFYNHxhsEVHTHiBJDPj3gmto
 Oysg==
X-Gm-Message-State: AOAM530akp0m+qs06GazzBmP3+FRCL9CtUUEdy4oGNGywJEOMxqzVxgJ
 ijX9M5qnooIsKc143Ei2ygk=
X-Google-Smtp-Source: ABdhPJw+8PK/stydHq+zPhT/JPDq8RF8MCxCKKZ7i1pkIox3rB1Kwqp3FM7mdjRv/Qt237Pna3LWTw==
X-Received: by 2002:a5d:614b:: with SMTP id y11mr1801879wrt.77.1589939018483; 
 Tue, 19 May 2020 18:43:38 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id z10sm1493351wmi.2.2020.05.19.18.43.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 18:43:38 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/5] dt-bindings: arm: amlogic: add support for the Beelink
 GT-King
Date: Wed, 20 May 2020 01:43:26 +0000
Message-Id: <20200520014329.12469-3-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200520014329.12469-1-christianshewitt@gmail.com>
References: <20200520014329.12469-1-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_184340_100743_ADE147B3 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Shenzen AZW (Beelink) GT-King is based on the Amlogic W400 reference
board with an S922X chip.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 47badda69ef5..cd7a081a4f17 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -149,6 +149,7 @@ properties:
       - description: Boards with the Amlogic Meson G12B S922X SoC
         items:
           - enum:
+              - azw,gtking
               - hardkernel,odroid-n2
               - khadas,vim3
               - ugoos,am6
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
