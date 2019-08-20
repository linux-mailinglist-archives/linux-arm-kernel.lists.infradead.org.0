Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE62996005
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 15:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sV1KAN2ajrHp9YTfn/xVCeZq703WTMelzTom+Wg52yI=; b=RGz+M0rSSERzwGSb1dN749zDyO
	cVMiNavqwzg3LxXACIOeHKamCO4eHP8+z+aJcrbVQpiGQJ5W6intRHC6us+J2/GkXzIJ9kqYeYL2O
	Hdi4bUfPwPfwkguUdmhJXe9ZjlWPNyvRuP94XBHWXlbM8zvV1hDOXNGc0VQylXYMvoDSJPs3rfdXG
	qk+rlcAKjoRzShwlZaI7pcc3v6Ty9KR3WSRM0Xx3KEcTSH0i58oz90ISM+Rh0kh+5tCPh8MbkDeWz
	jnE4fi1BKqSB6AQuVttpU2hD0nOqqzJb9L2YQn4hxchnhavxZvy5EM4+fyLZTBGMinHyppXUgcRM+
	RpFzgReQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04BH-00060F-Jl; Tue, 20 Aug 2019 13:28:11 +0000
Received: from mx-rz-2.rrze.uni-erlangen.de ([2001:638:a000:1025::15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04B1-0005SR-LV
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 13:27:57 +0000
Received: from mx-rz-smart.rrze.uni-erlangen.de
 (mx-rz-smart.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::1e])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mx-rz-2.rrze.uni-erlangen.de (Postfix) with ESMTPS id 46CWn06MnBzPk8g;
 Tue, 20 Aug 2019 15:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1566307652; bh=RRTtHjXBxTVQh7do1YcOe264VD6+MXJr+xqV5RKHI8I=;
 h=From:Subject:To:Cc:Date:From:To:CC:Subject;
 b=FRauvwOoLCS8bzBBigiDmnT9hEaHmyVg48UQbuZEYaTymk3hq9n1MdM5qhHOwK2PO
 h023wKb9xzOLkNNR9r+2oUN+LWlLFW870hYJz8uHLQ7h44U6z6Tc46cgQCaHCfJ6CR
 7K2U4bjI9FW4dMBkvDkas/8XpkUe5a154hxfOzOfcl/spBVGgU9FCSSSySR3fESvFH
 Dx6Pv/u6yss37sENF3xdxrHthXf2Le5W/2WFtsewRW0zlRSy2GJxQUnUoRJoUwfF69
 6K9VGNjxIFERUsBoyKFmaBjCKXmWZQMxeeLBBz35pawD/Hkz+p2lbRTAOPT7JuWOLa
 5Z46RiK+ntEOg==
X-Virus-Scanned: amavisd-new at boeck4.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
X-RRZE-Submit-IP: 109.41.192.99
Received: from [192.168.43.238] (ip-109-41-192-99.web.vodafone.de
 [109.41.192.99])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: U2FsdGVkX18k1zGhCfJiNFmXL4fjORVG2nesGGst0Vg=)
 by smtp-auth.uni-erlangen.de (Postfix) with ESMTPSA id 46CWmy1k4mzPjgS;
 Tue, 20 Aug 2019 15:27:30 +0200 (CEST)
From: Sebastian Duda <sebastian.duda@fau.de>
Subject: Status of Subsystems - MICROCHIP SAMA5D2-COMPATIBLE PIOBU GPIO
To: Andrei Stefanescu <andrei.stefanescu@microchip.com>
Message-ID: <d2bdb45a-3571-5989-8278-6f5c7d9839f2@fau.de>
Date: Tue, 20 Aug 2019 15:27:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_062755_860202_8C6D223B 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:638:a000:1025:0:0:0:15 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, lukas.bulwahn@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Andrei,

in my master thesis, I'm using the association of subsystems to 
maintainers/reviewers and its status given in the MAINTAINERS file.
During the research I noticed that there are several subsystems without 
a status in the maintainers file. One of them is the subsystem 
`MICROCHIP SAMA5D2-COMPATIBLE PIOBU GPIO` where you're mentioned as 
maintainer.

Is it intended not to mention a status for your subsystems?
What is the current status of your subsystem?

Kind regards
Sebastian Duda

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
