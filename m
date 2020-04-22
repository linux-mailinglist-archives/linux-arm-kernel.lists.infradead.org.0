Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F5F1B3526
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 04:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2twurivrsZ6A01trc9CaSwqtgxf04WJXGl70Y4xfys=; b=Hzal3Is9GnOMZq
	2X9j7dfkWoiF6QJA6Rz4zzVasI6mV5oR9Xm5H4pOHYSQMly4BDl7tkiQrkwg6W+pDQHDAbm2JKc1e
	2WS8ihtz7c3+IEdoGD2UlnnRUeu/oBzHwIOCIWOaryhidLLGdbdhhFkG4uJ2zFCogkC5VM13o++om
	ye/OU9W/SOv9jue6J1h4JuzHrBXlqwCmyWFgVTTRZEOwJdN9eC5xKO9jYhRIJlQFkbeVvmHxNlECV
	oEPz1Jv2WYdVRZ5NKhULoDIe/kvQpUya+jT/IXsRFT033O5Ud+l5SVt5dXqwFQehEfibeXGpqVg+D
	mc+8Sc9lrZYQamp1mPVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR5Qj-0000fu-TW; Wed, 22 Apr 2020 02:48:05 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR5QY-0000es-9Y
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 02:47:55 +0000
Received: by mail-pj1-x1033.google.com with SMTP id mq3so244688pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 19:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BnAC1hbVK6lZpRP0Ydha1Gljhb6wHC7kfdrL2QnVe3Y=;
 b=D3+US2mzOTCBLb41iSJmZWRpt3koyaYcyF6TG3cXoU06Vh7mub4ObwdASKKIzz//Kj
 nAC4jW7wXEu3qbwS8PV9zJ/yWeUENwtTlEG6zhZeXNbgqK2MMeOoWRlzrGrcc0lBC17y
 JeY6HtAv8yO8Qm3Ao6nL/GNTqBvQ/Jyr+5xRNyYtJH59FTz22uqEvgUAHzN/5+iKM4X+
 5vGMZX/CcKSeE0Scax6Ax2eKN0I+DzolpdSFAoyRFpLVqe3pqgoN6AnFaD3A5+nWDFbJ
 qElREYfHNJ+i06HLqbtSWd9HEOFUZBvDGujJO2/gDjL0v5ZD2g0RV+X9C+t26X62llDS
 oJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BnAC1hbVK6lZpRP0Ydha1Gljhb6wHC7kfdrL2QnVe3Y=;
 b=Fl4Wo/k2ZUE0APk2I75iaYraQBNvYL1rdTNdXrX0LHkvfTw2xufzKbGuFl9Wg35/kJ
 IOTt3mCkI3ij+3hD5N6xjOiijvSJKbKiWXWiGayXMSUOWkvl7TDYxCC97Thyz9G13OlF
 NhuDOSzpR8D6x7S+JCN2yCqZlzIexerkK1ZQ1Zl075N5Pcs96woWxG3Bmw+h2FDzuMfp
 00csjiDYkAE/NqBefSOtdPVYCqWtWZ8LwYmhDogrGUG7tXntqpa2cKQPr1H38fpR5HIk
 MoBHrswbBfB+uWYr4UOm0fRE8AGkHTPLUk/mRtdtik+1ikUj0qpTuwIBVMq+q7nsAiXL
 AESw==
X-Gm-Message-State: AGi0PuYkPdybyXFekWTlhFFyumD49e9vJ16DBEdtabsE2jyYbTki2fRr
 JR5xhmVsxBxCS2mtG8d+S4nhjA==
X-Google-Smtp-Source: APiQypICa6d157/uBpIY5hT3LWfrP2zQooLOfujR8IWHwtnRWQObzmUQkyHNw15Na9A22GX9yURBXg==
X-Received: by 2002:a17:902:9682:: with SMTP id
 n2mr24464721plp.44.1587523673472; 
 Tue, 21 Apr 2020 19:47:53 -0700 (PDT)
Received: from devnote (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
 by smtp.gmail.com with ESMTPSA id i9sm3826793pfd.148.2020.04.21.19.47.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 19:47:53 -0700 (PDT)
Date: Wed, 22 Apr 2020 11:47:50 +0900
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring
 <robh@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v4 1/2] dt-bindings: arm: Add Akebi96 board support
Message-Id: <20200422114750.57fafa027c7fa99f85aa1d7c@linaro.org>
In-Reply-To: <20200422114429.0b1a6f1a3366bae5964f3e10@linaro.org>
References: <20200422114429.0b1a6f1a3366bae5964f3e10@linaro.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_194754_344882_B1603980 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1033 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add uniphier-ld20-akebi96 compatible string for
Akebi96 board support.

Signed-off-by: Masami Hiramatsu <masami.hiramatsu@linaro.org>
---
 .../bindings/arm/socionext/uniphier.yaml           |    1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml b/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
index 65ad6d8a3c99..10a7f0752281 100644
--- a/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
+++ b/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
@@ -51,6 +51,7 @@ properties:
       - description: LD20 SoC boards
         items:
           - enum:
+            - socionext,uniphier-ld20-akebi96
             - socionext,uniphier-ld20-global
             - socionext,uniphier-ld20-ref
           - const: socionext,uniphier-ld20


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
