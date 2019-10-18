Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C2CDC0CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 11:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8lHbh9w6+fJKZ8Iba62T5HGRfIOlgAqVi7yEax3NPkA=; b=EjNVRyc3UNZYmr+TbrkELG63x
	kQLU6dAfEkpd4Db9b/ILshu04YVil8WOnPUYrGGUu2fWRvpXQcgOWs0G/SLf0t8wDgg6VetxGgHBJ
	Aqo1E2d0IFCH9zC74uWevtl+Hzza55BncJHbvAm0XzNpHD88qo/g0SiGyMPSRZBBRFuWBSp1zdmkN
	ge8yKExgh4BgRHnbfGC2AnxjHAqav2BNrTTPCxbs3mzJ8TGvydGIyOn42cCijtomUmT1p17fV3oGX
	Vj+NtzAH1DcPSQt976AaEh+H9duYPwyzIdvqkRdC8MWTP6qiqodX5MJwlIlOfreVLeu5Ivdm9GVUi
	+oWm3sIjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOUM-0004D1-Q1; Fri, 18 Oct 2019 09:24:02 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOUA-00041j-A4
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 09:23:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id o18so5402089wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 02:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CGQdxqGUDbNod+W6/TL8KymSEPAQ4wbTycas1Hr21Es=;
 b=WHYirSap2bUDjtP7M2fOe2O0Ou7/QQgEoHjseYOk4GU4k3al2ziBF4JmE9clRV6FQq
 CKx2JsJwoH2p+iy0RtgVorQ3rhMiDs/X1iqQPmDBI/a6LwZtALCbtDYIRS5PUG7c2EnM
 coct8G+RQZpF6Il0qhRpDiHwiW1fCg4QT/vC0TvVbjHpWkouXgiMddsTp8P/NBBf0DmR
 vDo4oBLgAbuKRhrMiDG/bJq5TsyxX/6g1QcG6wq3vPUQZljgAGFPnjyU42yDKZpQcn1m
 WtuTvGUWTGvL4rlCw/aCaCexaBplzo211AxKm4z1Rj24RxXDordUc4kBKXpFAGvdSKPh
 mPow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CGQdxqGUDbNod+W6/TL8KymSEPAQ4wbTycas1Hr21Es=;
 b=I1KUlQzeZLC/WCOyDcS0wtKo/ksjxHQYu3geEpGnHIi0dTjsNHkqnfaRY4OZ/xPgff
 XewrS2NObbkmGvSVb4gVR2yPioePgnqDEZjRpK9IgaS5mezn2b8Y6BCsTbY+kaQNjycE
 khRU15IEZo/bgqC4qV/6GVH66EBtxK8gEAuHY9jVzvk/jATAqN/GyWN29r+c5t4n15/J
 OEJaYstFz63VY/2OYjl+kxaOC5l0RQo5rsO5xSaRtpwMq5MX7Dvt67R1kuioELTJnTJe
 pBKMNdy3wxwcRi+JHephMUIRTdBQMr0/dT/RPuqyD9i5JpsKRwKKa2tHT1DMMDUNeJpK
 a/pw==
X-Gm-Message-State: APjAAAWQhqZkcDtqj/YXhkyyHpwzvQtLe4PI4sKjNCwAIOTtpmspdqL9
 l/4CcK3L8G6nSA2xJIcXhugOKw==
X-Google-Smtp-Source: APXvYqz5yayycr/haox3KXGV1PtZEk+0quO02cuhxR+rLcj/Hs1NKXoIT8iRtMit6PSmBz7HvCK/gw==
X-Received: by 2002:adf:b102:: with SMTP id l2mr7424627wra.269.1571390628507; 
 Fri, 18 Oct 2019 02:23:48 -0700 (PDT)
Received: from [192.168.0.31] (abo-99-183-68.mtp.modulonet.fr. [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id
 o19sm5808085wmh.27.2019.10.18.02.23.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Oct 2019 02:23:47 -0700 (PDT)
Subject: Re: [PATCH 0/2] media: meson: vdec: Add compliant H264 support
From: Maxime Jourdan <mjourdan@baylibre.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
References: <20191007145909.29979-1-mjourdan@baylibre.com>
 <8563127e-fe2c-a633-556b-8a883cebb171@xs4all.nl>
 <977c48e8-8275-c96a-688b-ccfbb873eb79@baylibre.com>
 <65a88bfc-d82b-1487-7983-507149b11673@xs4all.nl>
 <acef4f1e-0b59-30f5-f31f-9fc22f393072@baylibre.com>
 <fb6edb95-069e-abeb-416e-2327da0a87ab@xs4all.nl>
 <CAMO6nazotuiZQROoA4+b8tHZ-qpR4TS1RZWV6=fyPVCdsxz1Zg@mail.gmail.com>
Message-ID: <549936be-89ef-bfe7-8e38-924e4f284b98@baylibre.com>
Date: Fri, 18 Oct 2019 11:23:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMO6nazotuiZQROoA4+b8tHZ-qpR4TS1RZWV6=fyPVCdsxz1Zg@mail.gmail.com>
Content-Language: tl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_022350_415987_20B64A96 
X-CRM114-Status: GOOD (  27.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-amlogic@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/10/2019 09:50, Maxime Jourdan wrote:
> On Wed, Oct 9, 2019 at 2:01 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>
>> On 10/8/19 3:40 PM, Maxime Jourdan wrote:
>>> On 07/10/2019 18:39, Hans Verkuil wrote:
>>>> On 10/7/19 6:24 PM, Maxime Jourdan wrote:
>>>>> On 07/10/2019 17:12, Hans Verkuil wrote:
>>>>>> On 10/7/19 4:59 PM, Maxime Jourdan wrote:
>>>>>>> Hello,
>>>>>>>
>>>>>>> This patch series aims to bring H.264 support as well as compliance update
>>>>>>> to the amlogic stateful video decoder driver.
>>>>>>>
>>>>>>> There is 1 issue that remains currently:
>>>>>>>
>>>>>>>     - The following codepath had to be commented out from v4l2-compliance as
>>>>>>> it led to stalling:
>>>>>>>
>>>>>>> if (node->codec_mask & STATEFUL_DECODER) {
>>>>>>>       struct v4l2_decoder_cmd cmd;
>>>>>>>       buffer buf_cap(m2m_q);
>>>>>>>
>>>>>>>       memset(&cmd, 0, sizeof(cmd));
>>>>>>>       cmd.cmd = V4L2_DEC_CMD_STOP;
>>>>>>>
>>>>>>>       /* No buffers are queued, call STREAMON, then STOP */
>>>>>>>       fail_on_test(node->streamon(q.g_type()));
>>>>>>>       fail_on_test(node->streamon(m2m_q.g_type()));
>>>>>>>       fail_on_test(doioctl(node, VIDIOC_DECODER_CMD, &cmd));
>>>>>>>
>>>>>>>       fail_on_test(buf_cap.querybuf(node, 0));
>>>>>>>       fail_on_test(buf_cap.qbuf(node));
>>>>>>>       fail_on_test(buf_cap.dqbuf(node));
>>>>>>>       fail_on_test(!(buf_cap.g_flags() & V4L2_BUF_FLAG_LAST));
>>>>>>>       for (unsigned p = 0; p < buf_cap.g_num_planes(); p++)
>>>>>>>           fail_on_test(buf_cap.g_bytesused(p));
>>>>>>>       fail_on_test(node->streamoff(q.g_type()));
>>>>>>>       fail_on_test(node->streamoff(m2m_q.g_type()));
>>>>>>>
>>>>>>>       /* Call STREAMON, queue one CAPTURE buffer, then STOP */
>>>>>>>       fail_on_test(node->streamon(q.g_type()));
>>>>>>>       fail_on_test(node->streamon(m2m_q.g_type()));
>>>>>>>       fail_on_test(buf_cap.querybuf(node, 0));
>>>>>>>       fail_on_test(buf_cap.qbuf(node));
>>>>>>>       fail_on_test(doioctl(node, VIDIOC_DECODER_CMD, &cmd));
>>>>>>>
>>>>>>>       fail_on_test(buf_cap.dqbuf(node));
>>>>>>>       fail_on_test(!(buf_cap.g_flags() & V4L2_BUF_FLAG_LAST));
>>>>>>>       for (unsigned p = 0; p < buf_cap.g_num_planes(); p++)
>>>>>>>           fail_on_test(buf_cap.g_bytesused(p));
>>>>>>>       fail_on_test(node->streamoff(q.g_type()));
>>>>>>>       fail_on_test(node->streamoff(m2m_q.g_type()));
>>>>>>> }
>>>>>>>
>>>>>>> The reason for this is because the driver has a limitation where all
>>>>>>> capturebuffers must be queued to the driver before STREAMON is effective.
>>>>>>> The firmware needs to know in advance what all the buffers are before
>>>>>>> starting to decode.
>>>>>>> This limitation is enforced via q->min_buffers_needed.
>>>>>>> As such, in this compliance codepath, STREAMON is never actually called
>>>>>>> driver-side and there is a stall on fail_on_test(buf_cap.dqbuf(node));
>>>>>>
>>>>>> That's interesting. I will have to look more closely at this.
>>
>> This requires a helper function in videobuf2-v4l2.c.
>>
>> In vdec_decoder_cmd you would need code like this:
>>
>>          if (!vb2_start_streaming_called(&capture_queue)) {
>>                  vb2_dequeue_empty_last_buf(&capture_queue);
>>                  return 0;
>>          }
>>
>> The vb2_dequeue_empty_last_buf (function name can probably be improved upon!)
>> does nothing if no capture buffers were queued, otherwise it takes the first
>> buffer, sets the LAST flag and sets bytesused to 0 and marks it as DONE.
>>
>> The driver cannot do this directly, since the buffers were never queued to the
>> driver and are owned by vb2.
>>
>> This is something that needs to be done for any codec driver that sets
>> min_buffers_needed to a value > 1.
>>
>> The vb2 function would look something like this:
>>
>> void vb2_dqbuf_empty_last_buf(struct vb2_queue *q)
>> {
>>          struct vb2_buffer *vb;
>>          struct vb2_v4l2_buffer *vbuf;
>>          unsigned int i;
>>
>>          if (WARN_ON(q->is_output))
>>                  return;
>>          if (list_empty(&q->queued_list))
>>                  return;
>>          vb = list_first_entry(&q->queued_list, struct vb2_buffer, queued_entry);
>>          list_del(&vb->queued_entry);
>>          for (i = 0; i < vb->num_planes; i++)
>>                  vb2_set_plane_payload(vb, i, 0)
>>          vbuf = to_vb2_v4l2_buffer(vb);
>>          vbuf->flags |= V4L2_BUF_FLAG_LAST;
>>          vb2_buffer_done(vb, VB2_BUF_STATE_DONE);
>> }
>> EXPORT_SYMBOL_GPL(vb2_dqbuf_empty_last_buf);
>>
>> Neither compiled, nor tested, and I think this should be in v4l2-mem2mem.c instead of
>> in videobuf2-v4l2.c since this is very m2m specific.
>>
>> So see this as a suggestion :-)
>>
>> Anyway, the key take-away from this is that userspace does not know if your driver
>> behaves the way it does, so STOP should still produce a sane expected result.
>>
>> Which in this is just a single empty capture buffer marked LAST.
> 
> Thanks, this makes sense. It doesn't quite fit the current usage
> unfortunately as the test in v4l2-compliance goes like this:
> 
> fail_on_test(doioctl(node, VIDIOC_DECODER_CMD, &cmd));
> fail_on_test(buf_cap.querybuf(node, 0));
> fail_on_test(buf_cap.qbuf(node));
> fail_on_test(buf_cap.dqbuf(node));
> fail_on_test(!(buf_cap.g_flags() & V4L2_BUF_FLAG_LAST));
> 
> Since the buffer is queued after issuing the stop cmd, it is not
> possible to flag it as DONE in vdec_decoder_cmd.
> 
> A solution would be to hijack vidioc_qbuf and flag the buffer if a
> stop has been issued previously and the capture queue is not
> streaming. Would that be okay ?
> 

I was able to pass the vanilla v4l2-compliance tests by hacking in the 
following 2 things:

1) Adding your function that I modified a bit (buffer had to be tagged 
as VB2_BUF_STATE_ACTIVE, it shouldn't be removed from the list, and 
q->owned_by_drv_count needs to be atomic_inc'd)

void vb2_dqbuf_empty_last_buf(struct vb2_queue *q)
{
         struct vb2_buffer *vb;
         struct vb2_v4l2_buffer *vbuf;
         unsigned int i;

         if (WARN_ON(q->is_output))
                 return;
         if (list_empty(&q->queued_list))
                 return;

         vb = list_first_entry(&q->queued_list, struct vb2_buffer, 
queued_entry);
         for (i = 0; i < vb->num_planes; i++)
                 vb2_set_plane_payload(vb, i, 0);

	vb->state = VB2_BUF_STATE_ACTIVE;
	atomic_inc(&q->owned_by_drv_count);
         vbuf = to_vb2_v4l2_buffer(vb);
         vbuf->flags |= V4L2_BUF_FLAG_LAST;
         vb2_buffer_done(vb, VB2_BUF_STATE_DONE);
}

2) Hijacking vidioc_qbuf to DONE the buffer if a stop was previously 
asked for, and if the capture queue isn't streaming:

static int vdec_qbuf(struct file *file, void *priv,
		     struct v4l2_buffer *buf)
{
	struct v4l2_fh *fh = file->private_data;
	struct amvdec_session *sess;
	struct vb2_queue *vq;
	int ret;

	ret = v4l2_m2m_ioctl_qbuf(file, priv, buf);
	if (ret)
		return ret;

	sess = container_of(file->private_data, struct amvdec_session, fh);
	vq = v4l2_m2m_get_vq(fh->m2m_ctx, buf->type);
	/*
	 * If the capture queue isn't streaming and we were asked to
	 * stop, DONE the buffer instantly
	 */
	if (!V4L2_TYPE_IS_OUTPUT(vq->type) &&
	    !sess->streamon_cap && sess->should_stop)
		vb2_dqbuf_empty_last_buf(vq);

	return 0;
}

Overall it feels quite messy :( . It doesn't look like a buffer is 
supposed to be dequeued if streaming hasn't started (they are tagged as 
VB2_BUF_STATE_ACTIVE only when streaming starts, and this flag is a 
requirement for vb2_buffer_done).

All this could be built in more properly into v4l2-mem2mem.c, though it 
would require the same hacks around VB2_BUF_STATE_ACTIVE and 
q->owned_by_drv_count. Or it would need a vb2 function specifically for 
this case, which would be very similar to vb2_buffer_done but allowing 
the state being VB2_BUF_STATE_QUEUED and not changing q->owned_by_drv_count.

>>
>> Regards,
>>
>>          Hans


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
