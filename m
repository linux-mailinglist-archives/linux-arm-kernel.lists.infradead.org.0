Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 382D31D6ED4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 04:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nP2079wSTMfqH3VUV4EpakDwx/HjMDpm5DFHOkxbNDM=; b=FQQ2K5HRWSLmJhCJ8BilqULpzp
	rEyLYrB0/BfKWeymh7tl92rWqHhiBffpegvaQ3lMLeh1w5+JvS86g+uqXfau0EMDHm6MFJ2ke0jWC
	zLDIx2X3GjPm0E4L95MpmG9SaqAb1z05cEcp8ZMXxiaNlh1UPyadZu6Y+ntKlRwQ+RtvEO0KQDQ/s
	SmvW0jEQ1YxXgNt+8egkcN5q2dPgXpDMsOVForX/GjOxXWmGqd5xrN31NPQ9lMQJ0WohZsp89bp9w
	k5sGWS9bS9heFO1mFSEBWL8X5r5lg/ItDcKfjomZGpy+hSF1ct3vW6MEgXq6VxL9RmKc4gu3lYZQG
	xfycdj5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaVTj-0002UO-UX; Mon, 18 May 2020 02:26:07 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaVTM-0002Ce-6J; Mon, 18 May 2020 02:25:45 +0000
Received: by mail-lf1-x144.google.com with SMTP id z22so6665421lfd.0;
 Sun, 17 May 2020 19:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EZcwl+FdQQdIuROk/dCH6r22SPirYIaGMlA5OOst7lo=;
 b=iAHG98VaJgzyHr4TazcEbw/DTb4yVWv29sNpFRnPZHWerKfGq82Qz7+cnjA1q0o7ns
 xWMp04x7z+e1dzKS/atiBfEAagelFJREYtIp+Qe4our3RrCWPI3LHk4X+BXRGVbLUZiQ
 8e6/luO3w9QehGASre10BZvnKVBJZ/IWiY4e108V73EP7FZeEZj4hWtKit1zzTV7aauc
 U2exa0G0acHjHhL1Tzp1hvxOhaPXgktqkFsAw4mfQ4LxbPzqi6lPITYTxboAeH/iII1l
 deUaui/u/yaZZI2Ar3v12mRjDxi8CKMeJsKYR3rUEt7RJJvBKGUI4WM/wVg1o4pVVvdc
 I6zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EZcwl+FdQQdIuROk/dCH6r22SPirYIaGMlA5OOst7lo=;
 b=m/ZM2FqntxmVwPJE1c8bctobrHKuIj2KCqJXzV3XgNBep1Lbe5wgqOtY0Rmh7Nisss
 wcCclgUMmXhVxDKVgVntG4mo6TFasefVKpneUKS8/wnAqYBkRnIOrn4LAyY6VzgINGKs
 UFhX2NmOioWqsl1ILGE2wODOm+Vl+TdyVtyW/Wh2o3sgJSRNNi8wRfiUov68HynbBAZg
 X0EmQkzzKIirh7i19WEZzib5ScvkAof5Eo9ScawIMkbSn7ipu14QFl1EDHzpnDgVHuPU
 ZJLJV0mtwBAqqo2ozn76LNN18v0CeEVSLzl5yg51z7TeG2zNVK5SNqhFcgcjaQKWTHaa
 ZSrg==
X-Gm-Message-State: AOAM531adjabDP0rjjrQJIqLMcq7j30fAN7gN6P4NxkgHeepJ7vivLwM
 RRMOh5HPHhmmY4LhBDEKu3wMLWm+
X-Google-Smtp-Source: ABdhPJw+LU+/IwFw9MKHSFiOcLRwo+BVGtENw7Ju5BSQXs5NlQRrp4bjWvb2d2sG1i15BI8bqOb9Hw==
X-Received: by 2002:a05:6512:62:: with SMTP id
 i2mr1031616lfo.152.1589768742405; 
 Sun, 17 May 2020 19:25:42 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id m13sm5997306lfk.12.2020.05.17.19.25.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 May 2020 19:25:41 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/5] dt-bindings: arm: amlogic: add support for the Beelink
 GT-King
Date: Mon, 18 May 2020 02:25:28 +0000
Message-Id: <20200518022531.14739-3-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200518022531.14739-1-christianshewitt@gmail.com>
References: <20200518022531.14739-1-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_192544_231614_E3E9183D 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index 5180a548bd94..25e118b8a97b 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -151,6 +151,7 @@ properties:
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
